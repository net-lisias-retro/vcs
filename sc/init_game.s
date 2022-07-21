; restarts a new game

init_game:

	lda	#$00		; Score, in BCD				; 2
	sta	SCORE_HIGH						; 3
	sta	SCORE_LOW						; 3

	lda	#$90		; init the zappy wall colors		; 2
	sta	ZAP_BASE						; 3

	lda	#3		; number of lives			; 2
	sta	MANS							; 3

	lda	#1		; starting level			; 2
	sta	LEVEL							; 3

	jsr	disable_sound	; disable sound				; 6+

	rts								; 6
