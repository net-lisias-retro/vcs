; LOCATION LIBRARY_N data

.include "../locations.inc"

.byte $22			; color of pointer (sprite0)
.byte $00,$00			; background color, background color2
.byte 4,$10			; overlay (sprite1) coarse/fine
.byte 0,$00			; coarse/fine of missile0 (vertical line)
.byte $00,$00			; XMAX/XMIN of grab area
.byte $00,$00			; YMAX/YMIN of grab area
.byte LOCATION_BURNT_BOOK	; center destination
.byte LOCATION_LIBRARY_NW	; left destination
.byte LOCATION_LIBRARY_NE	; right destination
.byte $00,$00			; unused

.include "library_n_data.inc"
