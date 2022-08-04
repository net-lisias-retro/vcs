; Myst for Atari 2600

; For E7 bank-switched cartridge (16k ROM, 2k RAM)

; by Vince `deater` Weaver <vince@deater.net>

.include "../vcs.inc"

; zero page addresses

TITLE_COLOR	=	$80

POINTER_ON	=	$81
POINTER_X	=	$82
POINTER_Y	=	$83
POINTER_X_COARSE=	$84
POINTER_X_END	=	$85
POINTER_Y_END	=	$86

SFX_PTR		=	$87
FALL_COUNT	=	$88
LINK_COLOR	=	$89
ROOT_LINK_COLOR	=	$8A
CURRENT_LEVEL	=	$8B

TEMP1		=	$90
TEMP2		=	$91
FRAME		=	$92
CURRENT_SCANLINE=	$93
LEVEL		=	$94
INPUT_COUNTDOWN	=	$95
POINTER_TYPE	=	$96
	POINTER_TYPE_POINT	= $00
	POINTER_TYPE_GRAB	= $01
	POINTER_TYPE_LEFT	= $02
	POINTER_TYPE_RIGHT	= $03

INL		=	$9E
INH		=	$9F


; hold the current level data

LEVEL_DATA	=	LEVEL_HAND_COLOR

LEVEL_HAND_COLOR	=	$A0	; color of sprite 0 (hand)
LEVEL_BACKGROUND_COLOR	=	$A1	; background color
LEVEL_BACKGROUND_COLOR2	=	$A2	; background color 2 (if mid-screen switch)
LEVEL_OVERLAY_COARSE	=	$A3	; coarse location of overlay sprite
LEVEL_OVERLAY_FINE	=	$A4	; fine location of overlay sprite
LEVEL_MISSILE0_COARSE	=	$A5	; coarse location of overlay missile0 (vertical line)
LEVEL_MISSILE0_FINE	=	$A6	; fine location of overlay missile0
LEVEL_GRAB_MINX		=	$A7	; XMIN of grab area
LEVEL_GRAB_MAXX		=	$A8	; XMAX of grab area
LEVEL_GRAB_YMIN		=	$A9	; YMIN of grab area
LEVEL_GRAB_YMAX		=	$AA	; YMAX of grab area
LEVEL_RESERVED0		=	$AB
LEVEL_RESERVED1		=	$AC
LEVEL_RESERVED2		=	$AD
LEVEL_RESERVED3		=	$AE
LEVEL_RESERVED4		=	$AF


; for the zx02 decompression

offset		=	$B0
offset_h	=	$B1
ZX0_src		=	$B2
ZX0_src_h	=	$B3
ZX0_dst		=	$B4
ZX0_dst_h	=	$B5
bitr		=	$B6
pntr		=	$B7
pntr_h		=	$B8


HAND_SPRITE	=	HAND_SPRITE_LINE0
HAND_SPRITE_LINE0=	$E0
HAND_SPRITE_LINE1=	$E1
HAND_SPRITE_LINE2=	$E2
HAND_SPRITE_LINE3=	$E3
HAND_SPRITE_LINE4=	$E4
HAND_SPRITE_LINE5=	$E5
HAND_SPRITE_LINE6=	$E6
HAND_SPRITE_LINE7=	$E7
HAND_SPRITE_LINE8=	$E8
HAND_SPRITE_LINE9=	$E9
HAND_SPRITE_LINE10=	$EA
HAND_SPRITE_LINE11=	$EB
HAND_SPRITE_LINE12=	$EC
HAND_SPRITE_LINE13=	$ED
HAND_SPRITE_LINE14=	$EE
HAND_SPRITE_LINE15=	$EF




myst:
	sei		; disable interrupts
	cld		; clear decimal bit

restart_game:


	; init zero page and addresses to 0

	ldx	#0
	txa
clear_loop:
	sta	$0,X
	inx
	bne	clear_loop
	dex
	txs	; point stack to $1FF (mirrored at top of zero page)

	lda	#2
	sta	VBLANK	; disable beam


	;==============================
	; load in current level
	;==============================

	jsr	load_level


	;===========================
	;===========================
	; main engine
	;===========================
	;===========================


	.include "level_engine.s"

	;===========================
	; common routines
	;===========================

	.include "load_level.s"
	.include "adjust_sprite.s"
	.include "common_routines.s"
	.include "hand_motion.s"
	.include "hand_copy.s"
	.include "sound_update.s"
	.include "zx02_optim.s"

	.include "sfx_data.inc"
	.include "sprite_data.inc"

clock_data_zx02:
;	.incbin "locations/clock_data.zx02"

;.include "myst_data.inc"

.segment "IRQ_VECTORS"
	.word myst	; NMI
	.word myst	; RESET
	.byte $E7,$00	; IRQ
