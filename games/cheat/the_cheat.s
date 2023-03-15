; the cheat?

; by Vince `deater` Weaver <vince@deater.net>

.include "../../vcs.inc"


; zero page addresses

TEXT_COLOR		=	$80
MAIN_COLOR              =       $81
LINE_COLOR              =       $82
FRAME                   =       $83
FRAMEH                  =       $84
FRAME2                  =       $85
MUSIC_POINTER		=	$86
MUSIC_COUNTDOWN		=	$87
MUSIC_PTR_L		=	$88
MUSIC_PTR_H		=	$89

TEMP1			=	$90
TEMP2			=	$91
DIV3			=	$92
XSAVE			=	$93




the_cheat_start:

	;=======================
	; clear registers/ZP/TIA
	;=======================

	sei			; disable interrupts
	cld			; clear decimal mode
	ldx	#0
	txa
clear_loop:
	dex
	txs
	pha
	bne	clear_loop

	; S = $FF, A=$0, x=$0, Y=??


title_loop:

	;=========================
	; Start Vertical Blank
	;=========================

	lda	#2			; reset beam to top of screen
	sta	VSYNC

	; wait for 3 scanlines of VSYNC

	sta	WSYNC			; wait until end of scanline
	sta	WSYNC

	dec	MAIN_COLOR		; rotate colors
	lda	MAIN_COLOR		; copy over main color
	sta	LINE_COLOR

	sta	WSYNC

	lda	#0			; done beam reset
	sta	VSYNC

	; 37 lines of vertical blank

	ldx	#36
	jsr	scanline_wait		; Leaves X zero
; 10

	;===========================
	; 36

	 ; apply fine adjust

	lda	#$e0
        sta     HMP0			; sprite0 + 2

	lda	#$20
        sta     HMP1			; sprite1 - 2

	sta	RESP0			; coasre sprite0

	lda	#$40			; red
	sta	COLUP0
	sta	COLUP1

	ldx	#6
atari_right_loop:
	dex
	bne	atari_right_loop

	nop								; 2
	lda	$00			; nop3				; 3

	sta	RESP1			; coarse sprite1

        sta     WSYNC                   ;                               3
	sta	HMOVE


	;=============================
	; 37

;	lda	#<music_len		; set up music pointer
;	sta	MUSIC_PTR_L
;	lda	#>music_len
;	sta	MUSIC_PTR_H

	jsr	inc_frame				; 6+18

	sta	WSYNC

	stx	VBLANK			; turn on beam (X=0)


	;===========================
	;===========================
	; playfield
	;===========================
	;===========================
	; draw 192 lines


	;===========================
	; first 15 lines black
	;===========================
	lda	#$72			; dark blue
	sta	COLUBK			; set playfield background

	ldx	#15
	jsr	scanline_wait		; leaves X 0


; 10

	;===========================
	; 28 lines of title
	;===========================
	lda	#$34
	sta	COLUBK

	ldx	#28
	jsr	scanline_wait

	;===========================
	; 149 lines of rest
	;===========================

	lda	#$72			; dark blue
	sta	COLUBK			; set playfield background

	ldx	#149
	jsr	scanline_wait


	;============================
	; overscan
	;============================
common_overscan:
	lda	#$2		; turn off beam
	sta	VBLANK

	; wait 30 scanlines

	ldx	#29
	jsr	scanline_wait

	;=======================
	; 29

	; fallthrough

;	jsr	play_music

	jmp	title_loop


blah:
	jmp	blah

.include "title_pf.inc"


	;====================
	; scanline wait
	;====================
	; scanlines to wait in X

scanline_wait:
	sta	WSYNC
	dex						; 2
	bne	scanline_wait				; 2/3
	rts						; 6

	;==================
	; increment frame
	;==================
	; worst case 18
inc_frame:
	inc	FRAME					; 5
	bne	no_inc_high				; 2/3
	inc	FRAMEH					; 5
no_inc_high:
	rts						; 6


.segment "IRQ_VECTORS"
	.word the_cheat_start	; NMI
	.word the_cheat_start	; RESET
	.word the_cheat_start	; IRQ







