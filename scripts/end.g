M104 S0 ;extruder heater off
M140 S0 ;bed heater off
G91 ;relative positioning
G1 E-1 F300 ;retract the filament 1mm
G1 Z+0.8 E-3 X-20 Y-20 F6000 ;move Z up and retract filament 3mm
M106 S180 ;fan at 70% to cool nozzle
G90 ;absolute positioning
G28 X0 Y0 ;home X and Y
G1 Y190 ;move bed forward
M84 ;steppers off
G4 P120000 ;wait 2 minutes (120 seconds)
M106 S0 ;fan off
M81 S1