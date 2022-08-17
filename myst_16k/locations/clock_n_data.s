; LOCATION_CLOCK_N data

.include "../locations.inc"

.byte $30			; color of pointer (sprite0)
.byte $00,$00			; background color, background color2
.byte 4,$F0			; overlay (sprite1) coarse/fine
.byte 11,$E0			; coarse/fine of missile0 (vertical line)
.byte $00,$00			; XMAX/XMIN of grab area
.byte $00,$00			; YMAX/YMIN of grab area
.byte LOCATION_CLOCK_S		; left destination
.byte LOCATION_CABIN_PATH_N	; center destination
.byte LOCATION_CLOCK_S		; right destination
.byte $00,$00			; unused

.include "clock_n_data.inc"
