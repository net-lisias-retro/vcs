; LOCATION LIBRARY_NW data

.include "../locations.inc"

.byte $22			; color of pointer (sprite0)
.byte $00,$00			; background color, background color2
.byte 4,$30			; overlay (sprite1) coarse/fine
.byte 0,$00			; coarse/fine of missile0 (vertical line)
.byte 64,100			; XMAX/XMIN of grab area
.byte 15,26			; YMAX/YMIN of grab area
.byte $FF			; center destination
.byte LOCATION_LIBRARY_W	; left destination
.byte LOCATION_LIBRARY_N	; right destination
.byte $00,$00			; unused

.include "library_nw_data.inc"
