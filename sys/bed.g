; bed.g
; called to perform automatic bed compensation via G32
;

; Clear any bed transform
G28                         ; home
M401                        ; deploy Z probe
G30 P0 X35 Y100 Z-99999     ; probe near a leadscrew
G30 P1 X200 Y100 Z-99999 S2   ; probe near a leadscrew
G91
G1 Z2 F1000
G90
G1 X70 Y150 F6000
G30
M402                        ; retract probe
G91
G1 Z2 F1000
G90