# Bezalel - An open-source 3D printable low-cost tactile display

This folder contains the OpenSCAD and STL files necessary to build a 3x3 matrix of vertical pins.
The STL files corresponds to the mechanical design of a 3x3 matrix, which demands only 6 servos.

## Version
2023.06

## Materials
| Item  | US$ | Amount | Total | Link |
| --- | --- | --- | --- | --- |
| PCA9685  | 13.99  | 1 | 13.99 | [Link](https://www.amazon.com/HiLetgo-PCA9685-Channel-12-Bit-Arduino/dp/B07BRS249H/ref=sr_1_1?crid=3NCI2V2WNV8UX&keywords=pca9685&qid=1687528366&sprefix=pca9685%2Caps%2C225&sr=8-1) |
| Arduino Mega  | 38.72  | 1 | 38.72 | [Link](https://store-usa.arduino.cc/collections/boards/products/arduino-mega-2560-rev3) |
| MG 90S  | 8.49  | 6 | 50.94 | [Link](https://www.amazon.com/Replace-Helicopter-Airplane-Controls-Vehicle/dp/B09KXM5L7Z/ref=sr_1_4?crid=3JCGJJ6OGAE61&keywords=mg90d&qid=1687527708&sprefix=mg90%2Caps%2C215&sr=8-4) |
| 1kg PLA  | 18.99  | 1 | 18.99 | [Link](https://www.amazon.com/Printer-Filament-SUNLU-Dimensional-Accuracy/dp/B07XG3RM58/ref=sr_1_1?crid=36WL13OOYLF9U&keywords=1kg+pla&qid=1687527450&sprefix=1kg+pl%2Caps%2C225&sr=8-1) |
| M3 nuts, bolts, washers  | 10.99  | 1 | 10.99 | [Link](https://www.amazon.com/Assortment-Stainless-Washers-Assorted-Machine/dp/B0BC24J6SS/ref=sr_1_2?crid=2U4W3G2L96AIJ&keywords=m3+nuts+and+bolts&qid=1687527390&sprefix=m3+nuts+and+bolt%2Caps%2C211&sr=8-2) |
| Jumpers | 6.98  | 1 | 6.98 | [Link](https://www.amazon.com/Elegoo-EL-CP-004-Multicolored-Breadboard-arduino/dp/B01EV70C78/ref=sr_1_1?crid=3KV2CCLQMP5ZZ&keywords=arduino+cables&qid=1687527906&sprefix=arduino+cabl%2Caps%2C219&sr=8-1) |
| 10 x M3 x 80mm Half threaded screw | 1.39  | 1 | 1.39 | [Link](https://a.aliexpress.com/_mPWlhBW) |
| 100 x M3 locknuts | 6.99  | 0.09 | 0.63 | [Link](https://www.amazon.com/100Pcs-Stainless-Self-Lock-Inserted-Clinching/dp/B075ZZW7VL/ref=sr_1_1?crid=134FDOY6J9LXK&keywords=m3+locknut&qid=1687528464&sprefix=m3+locknu%2Caps%2C223&sr=8-1) |
| 15 x M3 shaft collar | 7.99  | 0.6 | 4.79 | [Link](https://www.amazon.com/Hobbypark-Landing-Stopper-Airplane-Replacement/dp/B01EA912P8/ref=sr_1_4?crid=F3GVBCP8UDND&keywords=m3+shaft+collar&qid=1687529023&sprefix=m3+shaft+collar%2Caps%2C243&sr=8-4) |
| 4 x 3mm Flange Coupling Connector | 8.99  | 2.25 | 20.23 | [Link](https://www.amazon.com/Coupling-Connector-Coupler-Accessory-Fittings/dp/B083352VJH/ref=sr_1_3?crid=XSYHWYPV1CKU&keywords=3mm+flange+coupling&qid=1687529184&sprefix=3m+flange+coupling%2Caps%2C228&sr=8-3) |

## Circuit
We've been making tests with the circuit available [here](board.pdf).
It has been designed to support up to 32 servos because we're planning to build matrices with more pins.