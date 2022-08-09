; LOCATION_HILLTOP_N data

.include "../locations.inc"

.byte $22			; color of pointer (sprite0)
.byte $02,$02			; background color, background color2
.byte 3,$C0			; overlay (sprite1) coarse/fine
.byte 0,$00			; coarse/fine of missile0 (vertical line)
.byte $00,$00			; XMAX/XMIN of grab area
.byte $00,$00			; YMAX/YMIN of grab area
.byte LOCATION_HILLTOP_W	; left destination
.byte LOCATION_LIBRARY_N	; center destination
.byte LOCATION_HILLTOP_E	; right destination
.byte $00,$00			; unused

.include "hilltop_n_data.inc"
