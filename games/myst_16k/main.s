; Myst for Atari 2600

; For E7 bank-switched cartridge (16k ROM, 2k RAM)

; by Vince `deater` Weaver <vince@deater.net>

.include "../../vcs.inc"

.include "zp.inc"
.include "locations.inc"

.include "locations/level_locations.inc"
.include "rom_bank5_routines.inc"
.include "rom_bank6_routines.inc"

	;==============================
	;==============================


myst:
	sei		; disable interrupts
	cld		; clear decimal bit

restart_game:


	; init zero page and addresses to 0

	ldx	#0
	txa
clear_loop:
	dex
	txs
	pha
	bne	clear_loop

	; S=$FF, A=$00, X=$00, Y=??


	;==============================
	; Run intro
	;==============================

	;=============================
	; first run title (MYST logo)

	; title is now in BANK5

	sta	E7_SET_BANK5		; title is in rom bank6
	sta	E7_SET_256_BANK0	; not necessary?
	jsr	do_title

	;=============================
	; then run cleft

	; cleft is in BANK6

	sta	E7_SET_BANK6		; cleft is in rom bank6
	jsr	do_cleft

	;==============================
	; Show book (ROM bank 6)
	;==============================

	ldy	#LOCATION_ARRIVAL_N
	sty	CURRENT_LOCATION
	sty	LINK_DESTINATION

	jsr	do_book

	;==========================
	; DEBUG
	;	makes getting white page easier

	dec	SWITCH_STATUS


	;==============================
	; load in current level
	;==============================
load_new_level:
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

	.include "zx02_optim.s"

	.include "load_level.s"
	.include "position.s"
	.include "common_routines.s"




do_book:
	; switch to bank 6
	sta	E7_SET_BANK6

	jmp	book_common



; e7 signature for MAME */
; this is LDA $FFE5
;.byte $ad, $e5, $ff

.segment "BANKSWITCH"
	.byte $00

.segment "IRQ_VECTORS"
	.word myst	; NMI
	.word myst	; RESET
	.byte $E7,$00	; IRQ
