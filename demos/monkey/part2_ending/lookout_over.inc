; 56
.if 0
lookout_sprite_colors:
	.byte $2E,$2E,$2E,$2E,$0E,$0E,$0E,$0E
	.byte $3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A
	.byte $3A,$3A,$3A,$3A,$3A,$3A,$3A,$3A
	.byte $0E,$0E,$0E,$0E,$2E,$2E,$2E,$2E
	.byte $04,$04,$04,$04,$2E,$2E,$2E,$2E
	.byte $04,$04,$04,$04,$2E,$2E,$2E,$2E
	.byte $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C

lookout_sprite:
	.byte $10,$10,$10,$10,$90,$90,$90,$90
	.byte $90,$90,$90,$90,$90,$90,$90,$90
	.byte $90,$90,$90,$90,$90,$90,$90,$90
	.byte $98,$98,$98,$98,$18,$18,$18,$18
	.byte $98,$98,$98,$98,$18,$18,$18,$18
	.byte $98,$98,$98,$98,$18,$18,$18,$18
	.byte $18,$18,$18,$18,$18,$18,$18,$18
.endif

; Using background color $00
lookout_sprite_colors:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $2E,$0E,$3A,$3A,$3A,$3A,$0E,$2E
	.byte $04,$2E,$04,$2E,$1C,$1C,$00,$00


lookout_sprite:
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $00,$00,$00,$00,$00,$00,$00,$00
	.byte $10,$90,$90,$90,$90,$90,$98,$18
	.byte $98,$18,$98,$18,$18,$18,$00,$00

