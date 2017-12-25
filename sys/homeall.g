; homeall.g
; called to home all axes
;
M561
; Relative positioning
G91

; Lift Z
G1 Z5 F6000

; Course home X and Y
G1 X-205 Y-205 F1800 S1

; Move away from the endstops
G1 X5 Y5 F6000

; Fine home X and Y
G1 X-205 Y-205 F360 S1

; called to home the Z axis
;

;G91 ; Relative mode
;M584 Z2 ; Split Z into 2 (Z+U)
;G1 Z180 U180 F2000 S1	; Move up to 180mm in the +Z direction. S1 to stop if endstop is triggered
;G1 Z-2 U-2 F600 S2 ; Move 2mm in the -Z direction - (I'm not sure what S2 is for?)
;G1 Z3 U3 F100 S1	; Move slowly 3mm in the +Z direction, stopping at the homing switch
;M584 Z2:4 ; Join U to Z again (pay attention to drive numbers used)
;G90 ; Back to absolute mode
;G1 Z8 F6000
; Back to absolute positioning

G90
M98 Pdeployprobe.g
; Go to first bed probe point and home the Z axis
G1 X70 Y150 F6000
G30

; Uncomment the following lines to lift Z after probing
G91
G1 Z3 F1000
G90


