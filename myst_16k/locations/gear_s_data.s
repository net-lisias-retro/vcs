; LOCATION GEAR_S data

.include "../locations.inc"

.byte $22			; color of pointer (sprite0)
.byte $02,$02			; background color, background color2
.byte 6,$90			; overlay (sprite1) coarse/fine
.byte 0,$00			; coarse/fine of missile0 (vertical line)
.byte $00,$00			; XMAX/XMIN of grab area
.byte $00,$00			; YMAX/YMIN of grab area
.byte LOCATION_GEAR_N		; left destination
.byte LOCATION_HILLTOP_W	; center destination
.byte LOCATION_GEAR_N		; right destination
.byte $00,$00			; unused

.include "gear_s_data.inc"
