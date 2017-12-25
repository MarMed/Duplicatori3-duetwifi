M80 ;Power On
G21 ;metric values
G90 ;absolute positioning
M107 ;start with the fan off
G32 ; Home-all and adjust leadscrews
G29 ; Auto Level
G92 E0 ; reset extruder to 0
G0 X0 Y0 Z10 F2000; return to front left corner
G1 Z0.2 F3000 ; get ready to prime
G1 X150 E10 F600 ; prime nozzle
G92 E0 ;reset extruder to 0
M117 "Printing"