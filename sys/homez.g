; homez.g
; called to home the Z axis
;
G91

; Lift Z
G1 Z5 F6000
G90
M98 Pdeployprobe.g
; Go to first bed probe point and home the Z axis
G1 X70 Y150 F6000
G30

; Uncomment the following lines to lift Z after probing
G91
G1 Z3 F1000
G90