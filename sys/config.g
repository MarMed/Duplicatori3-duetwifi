; Configuration file for Duet WiFi (firmware version 1.17)
; executed by the firmware on start-up
;

; General preferences
M111 S0 ; Debugging off
G21 ; Work in millimetres
G90 ; Send absolute coordinates...
M83 ; ...but relative extruder moves
M555 P2 ; Set firmware compatibility to look like Marlin
M208 X0 Y0 Z0 S1 ; Set axis minima
M208 X200 Y218 Z180 S0 ; Set axis maxima

; Endstops
M574 X1 Y1 Z2 S0 ; Define active low and unused microswitches
M307 H3 A-1 C-1 D-1 ;
M558 P5 X0 Y0 Z1 H3 F200 T5000
G31 X34 Y-50 Z1 P25
M557 X35:200 Y14:168 S23:22 ; Define mesh grid

; Drives
M569 P0 S1 ; Drive 0 goes forwards
M569 P1 S1 ; Drive 1 goes forwards
M569 P2 S0 ; Drive 2 goes backwards
M569 P3 S0 ; Drive 3 goes backwards
M569 P4 S0 ; 2nd Z-motor - Normally used as Extruder 1
; Motor remapping for dual Z
M584 X0 Y1 Z2:4 U4 E3 P3 ; Driver 0 For X, 1 for Y, Z=2:4 U=4, Extruder 3
M671 X-50:250.0 Y100.0:100.0 ; leadscrew offsets from home
M574 U2 S0

M350 X16 Y16 Z16 U16 E256 I1             ; set 16x microstepping with interpolation
M92 X80 Y80 Z400 U400 E1552                ; set axis steps/mm
M566 X480 Y480 Z12 U12 E120 ; Set maximum instantaneous speed changes (mm/min)
M203 X12000 Y12000 Z1200 U1200 E3000 ; Set maximum speeds (mm/min)
M201 X800 Y800 Z100 U100 E5000 ; Set accelerations (mm/s^2)
M906 X700 Y700 U351 Z351 E918 I30 ; Set motor currents (mA) and motor idle factor in per cent
M84 S30 ; Set idle timeout

; Heaters
M143 S270 ; Set maximum heater temperature to 260C
M305 P0 T100000 B3950 R4700   ; Put your own H and/or L values here to set the bed thermistor ADC correction
M305 P1 T100000 B4615 C8.958388e-8 R4700   ; Put your own H and/or L values here to set the first nozzle thermistor ADC correction
M307 H0 A179.9 C690.9 D0.8 S1.00 B0 F60 ; bed heater settings
M307 H1 A502.9 C243.2 D5.6 S1.00 V12.2 B0 ; extruder heater settings

M570 S120                           ; Increase to allow extra heating time if needed

; Tools
M563 P0 D0 H1 ; Define tool 0
G10 P0 X0 Y0 Z0 ; Set tool 0 axis offsets
G10 P0 R0 S0 ; Set initial tool 0 active and standby temperatures to 0C

; Network
M550 Pwanhao-di3 ; Set machine name
M552 S1 ; Enable network
M586 P0 S1 ; Enable HTTP
M586 P1 S0 ; Disable FTP
M586 P2 S0 ; Disable Telnet

; Fans
M106 P1 S1 I0 F500 H1 T45 ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P2 I-1 ; Disable fan 3

; Custom settings are not configured

; Miscellaneous
T0 ; Select first tool
