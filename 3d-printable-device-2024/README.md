# Bezalel 2024.01

This folder contains the [mechanical model](https://www.youtube.com/shorts/VI4thVvgoXY) of the Bezael device that has been designed for being actuated using stepper motors.

## Hardware
* 2 x Nema 17 17hs4401 4kgf.cm stepper motor
* 1 x Arduino Uno R3
* 1 x CNC Shield V3
* 2 x DRV8825 drivers (VREF 1.6V)
* 1 x 12V 3A power adapter

## Software
Universal G-code Sender (XY step size = 160, Feed rate = 6000)

### GRBL Configuration
```
$0 = 10    (Step pulse time, microseconds)
$1 = 25    (Step idle delay, milliseconds)
$2 = 7    (Step pulse invert, mask)
$3 = 7    (Step direction invert, mask)
$4 = 0    (Invert step enable pin, boolean)
$5 = 0    (Invert limit pins, boolean)
$6 = 0    (Invert probe pin, boolean)
$10 = 1    (Status report options, mask)
$11 = 0.010    (Junction deviation, millimeters)
$12 = 0.002    (Arc tolerance, millimeters)
$13 = 0    (Report in inches, boolean)
$20 = 0    (Soft limits enable, boolean)
$21 = 1    (Hard limits enable, boolean)
$22 = 1    (Homing cycle enable, boolean)
$23 = 0    (Homing direction invert, mask)
$24 = 300.000    (Homing locate feed rate, mm/min)
$25 = 500.000    (Homing search seek rate, mm/min)
$26 = 250    (Homing switch debounce delay, milliseconds)
$27 = 1.000    (Homing switch pull-off distance, millimeters)
$30 = 1000    (Maximum spindle speed, RPM)
$31 = 0    (Minimum spindle speed, RPM)
$32 = 1    (Laser-mode enable, boolean)
$100 = 40.000    (X-axis travel resolution, step/mm)
$101 = 40.000    (Y-axis travel resolution, step/mm)
$102 = 25.000    (Z-axis travel resolution, step/mm)
$110 = 16000.000    (X-axis maximum rate, mm/min)
$111 = 16000.000    (Y-axis maximum rate, mm/min)
$112 = 2400.000    (Z-axis maximum rate, mm/min)
$120 = 150.000    (X-axis acceleration, mm/sec^2)
$121 = 150.000    (Y-axis acceleration, mm/sec^2)
$122 = 200.000    (Z-axis acceleration, mm/sec^2)
$130 = 500.000    (X-axis maximum travel, millimeters)
$131 = 200.000    (Y-axis maximum travel, millimeters)
$132 = 200.000    (Z-axis maximum travel, millimeters)
```
