; LOCATION LIBRARY_NE data

.include "../locations.inc"

.byte $22			; color of pointer (sprite0)
.byte $00,$00			; background color, background color2
.byte 63			; overlay (sprite1) X location
.byte $FF			; center destination
.byte LOCATION_LIBRARY_N	; left destination
.byte LOCATION_LIBRARY_E	; right destination
.byte 64,100			; XMAX/XMIN of grab area
.byte 15,26			; YMAX/YMIN of grab area
.byte 0				; missile0 (vertical line) X location
.byte $00,$00			; unused
.byte $00,$00			; unused

.include "library_ne_data.inc"
