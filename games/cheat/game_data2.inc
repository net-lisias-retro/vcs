bushes_bg_colors:
	.byte $AE,$AE,$AE,$AE,$AE,$AE,$0E,$0E
	.byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
	.byte $0E,$AE,$AE,$AE,$AE,$AE,$AE,$AE
	.byte $AE,$AE,$AE,$AE,$C2,$C2,$C2,$C2
	.byte $C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2
	.byte $C2,$C2,$C2,$C2,$C2,$C2,$C2,$C2
	.byte $C2,$C2,$C2,$C2,$D0,$D0,$D0,$D0
	.byte $D0,$D0,$D0,$C2

bushes_colors:
	.byte $0E,$0E,$0E,$0E,$0E,$0E,$AE,$AE
	.byte $AE,$AE,$AE,$AE,$AE,$AE,$AE,$AE
	.byte $AE,$0E,$00,$00,$00,$00,$00,$00
	.byte $C2,$C2,$C2,$C2,$AE,$AE,$AE,$AE
	.byte $AE,$AE,$AE,$AE,$AE,$AE,$AE,$AE
	.byte $AE,$AE,$AE,$AE,$00,$D0,$D0,$D0
	.byte $D0,$D0,$D0,$D0,$00,$00,$00,$C2
	.byte $C2,$C2,$C2,$00

strongbadia_colors:
	.byte $0E,$0E,$0E,$0E
	.byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
	.byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
	.byte $0E,$0E,$00,$F0,$F0,$F0,$F0,$F0
	.byte $F0,$00,$20,$20,$20,$20,$20,$20
	.byte $20,$00,$30,$30,$30,$30,$30,$30
	.byte $30,$30,$00,$00


bushes_playfield0_left:
	.byte $80,$80,$C0,$C0,$E0,$E0,$00,$00
	.byte $00,$80,$80,$80,$C0,$C0,$C0,$E0
	.byte $E0,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$E0,$E0,$E0,$E0
	.byte $C0,$C0,$C0,$C0,$C0,$C0,$40,$40
	.byte $40,$00,$00,$00,$00,$00,$00,$40
	.byte $40,$40,$40,$E0,$00,$00,$00,$80
	.byte $C0,$C0,$E0,$00

below_fence_colors:
	.byte $00
	.byte $00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$0E,$0A,$08,$08,$06,$06,$06
	.byte $00,$00,$00

; 28 bytes or so here...

.align $100

bushes_playfield1_left:
	.byte $F9,$FF,$FF,$FF,$FF,$BF,$F0,$F0
	.byte $F8,$F9,$F9,$F9,$FF,$FF,$FF,$FF
	.byte $FF,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$DF,$DF,$8F,$8E
	.byte $8E,$8C,$84,$84,$84,$84,$84,$84
	.byte $04,$04,$04,$04,$00,$01,$01,$09
	.byte $89,$89,$8F,$9F,$00,$00,$00,$8F
	.byte $DF,$FF,$FF,$00

strongbadia_playfield1_left:
	.byte $00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$03,$03,$03,$03,$03,$03
	.byte $03,$07,$07,$07,$07,$07,$07,$07
	.byte $07,$0F,$0F,$0F,$0F,$0F,$0F,$0F
	.byte $0F,$0F,$00,$00 ;,$00,$00,$00,$00

bushes_playfield2_left:
	.byte $0F,$1F,$1F,$3F,$3F,$7F,$86,$0F
	.byte $0F,$1F,$1F,$1F,$3F,$3F,$3F,$7F
	.byte $7F,$80,$00,$00,$00,$00,$00,$00
	.byte $C0,$C0,$C0,$C0,$3F,$1E,$1E,$0C
	.byte $0C,$0C,$0C,$0C,$0C,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$02,$42
	.byte $42,$CB,$CB,$EB,$00,$00,$00,$01
	.byte $03,$FF,$FF,$00

strongbadia_playfield2_left:
	.byte $F8,$F8,$F8,$F8
	.byte $F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8
	.byte $F8,$F8,$F8,$F8,$F8,$F8,$F8,$F8
	.byte $F8,$F8,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
	.byte $FF,$FF,$00,$00;,$00,$00,$00,$00


sbadia_overlay_colors:
	.byte $00
	.byte $40,$40,$0E,$0E,$f0,$f0,$12,$12
	.byte $12,$12,$12,$12,$12,$12,$12,$12
	.byte $12,$12,$12



sbadia_overlay_sprite:
	.byte $00
	.byte $FF,$FF,$E7,$E7,$FB,$FF,$80,$80
	.byte $80,$40,$40,$40,$40,$40,$80,$80
	.byte $80,$80,$80

below_fence_sprite:
	.byte $00
	.byte $00,$00,$00,$3C,$7E
	.byte $77,$E7,$EF,$FE,$7E,$3C,$00,$00
	.byte $00,$1E,$21,$41,$99,$81,$42,$7D
	.byte $00,$00,$00

cheat_sprite_yellow:
	.byte $00
	.byte $00
	.byte $7D
	.byte $3F
	.byte $7E
	.byte $7F
	.byte $7D
	.byte $7F
	.byte $3E
	.byte $57
	.byte $FC

cheat_sprite_black:
	.byte $00
	.byte $00
	.byte $0A
	.byte $00
	.byte $04
	.byte $01
	.byte $0B
	.byte $02
	.byte $04
	.byte $A2
	.byte $04


score_bitmap0:  ; turns out this was same pattern
score_zeros:    .byte $22,$55,$55,$55,$55,$55,$22,$00
score_ones:     .byte $22,$66,$22,$22,$22,$22,$77,$00
score_twos:     .byte $22,$55,$11,$22,$44,$44,$77,$00
score_threes:   .byte $22,$55,$11,$22,$11,$55,$22,$00
score_fours:    .byte $55,$55,$55,$77,$11,$11,$11,$00

; --****** ----**-- --****** ----**-- ----**--
; --**---- --**--** ------** --**--** --**--**
; --****-- --**---- ------** --**--** --**--**
; ------** --****-- ----**-- ----**-- ----****
; ------** --**--** --**---- --**--** ------**
; --**--** --**--** --**---- --**--** --**--**
; ----**-- ----**-- --**---- ----**-- ----**--

score_fives:    .byte   $77,$44,$66,$11,$11,$55,$22,$00
score_sixes:    .byte   $33,$44,$44,$66,$55,$55,$22,$00
score_sevens:   .byte   $77,$11,$11,$22,$44,$44,$44,$00
score_eights:   .byte   $22,$55,$55,$22,$55,$55,$22,$00
score_nines:    .byte   $22,$55,$55,$33,$11,$55,$22,$00





;=========================================
; sound effects
; doesn't need to be aligned?

sfx_f:
sfx_start:
	.byte	0, 26	; collide
sfx_collide:
	.byte	0, 12, 12, 12, 12, 12, 12, 12, 12	; zap
sfx_zap:
	.byte	0,22,22,23,23,24,24,25,25,26,26,27,28,29,30,31 ; collect
sfx_collect:
	.byte	0, 0, 0, 1, 1, 2, 2, 3, 3 ; speed
sfx_speed:
	.byte	0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 ; ping
sfx_ping:
;	.byte	0,26,26,26,26,26,26,26,29,29,29,29,29,29,29 ; game over
	.byte	0,26,26,26,26,26,26
sfx_game_over:

sfx_cv:
	.byte	0,$8F	; collide
	.byte	0,$3F,$3F,$3F,$3F,$3F,$3f,$3f,$3f	; zap
	.byte	0,$7f,$7f,$7f,$7f,$7f,$7f,$7f
	.byte	  $7f,$7f,$7f,$7f,$7f,$7f,$7f,$7f ; collect
	.byte	0,$6f,$6f,$6f,$6f,$6f,$6f,$6f,$6f ; speed
	.byte	0,$41,$42,$43,$44,$45,$46,$47,$48
	.byte	  $49,$4a,$4b,$4c,$4d,$4e,$4f ; ping
	.byte	0,$7f,$7f,$7f,$7f,$7f,$7f,$7f
	.byte	  0,$E0,$E0,$E0,$E0,$E0,$EF ; game over

; F, C/V
; collide V=F, C=8, F=31    (8,26)
; zap =   V=F, C=3, F=12
; collect V=F, C=6, F=2		; not really
; die	  V=F, C=8, F=24
; level over V=G,  7/26 1/29
; click  V=F C=15, F=26
SFX_COLLIDE	=	sfx_collide-sfx_start-1
SFX_ZAP		=	sfx_zap-sfx_start-1
SFX_COLLECT	=	sfx_collect-sfx_start-1
SFX_SPEED	=	sfx_speed-sfx_start-1
SFX_PING	=	sfx_ping-sfx_start-1
SFX_CLICK	=	sfx_game_over-sfx_start-1




strongbad_colors:
	.byte	$42,$42		; head (red)
	.byte	$42,$42		; head (red)
	.byte	$42,$42		; head (red)
	.byte	$42,$42		; head (red)
	.byte	$42,$42		; head (red)
	.byte	$42,$42		; head (red)
	.byte	$4e,$4e		; arm (pink)
	.byte	$4e,$4e		; arm (pink)
	.byte	$02,$02		; pants
	.byte	$02,$02		; pants
	.byte	$02,$02		; pants
	.byte	$42,$42		; shoe (red)
	.byte	$42,$42		; shoe (red)
	.byte	$0E,$0E		; shoe (white)




