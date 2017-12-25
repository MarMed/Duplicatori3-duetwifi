; homex.g
; called to home the X axis
;

; Lift Z relative to current position
G91
G1 Z5 F6000
G90

; Move quickly to X axis endstop and stop there (first pass)
G1 X-205 F1800 S1

; Go back a few mm
G91
G1 X5 F6000
G90

; Move slowly to X axis endstop once more (second pass)
G1 X-205 F360 S1

; Lower Z again
;G91
;G1 Z-5 F6000
;G90
