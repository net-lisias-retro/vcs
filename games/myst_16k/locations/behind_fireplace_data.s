; LOCATION BEHIND_FIREPLACE data

.include "../locations.inc"

.byte $22			; color of pointer (sprite0)
.byte $00,$00			; background color, background color2
.byte 56			; overlay (sprite1) X location
.byte $FF			; center destination
.byte LOCATION_INSIDE_FIREPLACE	; left destination
.byte LOCATION_INSIDE_FIREPLACE	; right destination
.byte 60,100			; XMAX/XMIN of grab area
.byte 7,46			; YMAX/YMIN of grab area
.byte 0				; missile0 (vertical line) X location
.byte $00,$00			; unused
.byte $00,$00			; unused

.include "behind_fireplace_data.inc"
