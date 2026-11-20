# Parts list and cost status

The list below includes parts explicitly named in available design notes. It is **not** a verified manufacturing BOM and exact footprint/supplier checks remain necessary.

## R4 STM32 carrier, main listed components

| Component or group | Known information | Quantity status |
| --- | --- | --- |
| STM32 development board | NUCLEO-F401RE assumed | 1 controller assumed |
| Input/output power connectors | XT60-style, 12 V input + 2 outputs | 3 connections shown |
| Module connectors | 2x7 headers, 2.54 mm | 2 |
| Switching relays | Songle SRD-12VDC-SL-C | 2 channels, exact relay variants verify |
| Relay drive transistors | onsemi PN2222ABU (E-B-C) | Verify source schematic |
| Buck regulator, 5 V | TI LM2596T-5.0/NOPB | 1 stage |
| Buck regulator, 3.3 V | TI LM2596T-3.3/NOPB | 1 stage |
| Inductors | Bourns SRR1260-101M | Verify exact stage quantities |
| Rectifier diodes | Vishay 1N5822 | Verify exact stage quantities |
| Indicator LEDs | Two relay plus 12/5/3.3 V | 5 |
| Fuses | F0, F1, F2, FI1, FI2, F3, F4, FA5, FA3, FB5, FB3 | Ratings in [hardware specs](HARDWARE_SPECS.md) |
| Capacitors / resistors | Follow the R4 schematic and regulator datasheets | Full counts/ESR are not yet finalized |

The exact R4 **BOM.csv / BOM.md referenced in the R4 guide** were not among the source files available here, so this document is a summary rather than their replacement.

## Earlier dual-relay Rev A design (6 November 2026)

| Reference | Quantity | Component |
| --- | ---: | --- |
| K1-K2 | 2 | Omron G2RL-1A-E DC12 relays |
| Q1-Q2 | 2 | AO3400A N-MOSFET, SOT-23 |
| D1-D2 | 2 | 1N4007 flyback diodes |
| D3-D5 | 3 | 3 mm indicator LEDs |
| R1-R2 | 2 | 1 kOhm gate resistors, 0805 |
| R5-R6 | 2 | 47 kOhm gate pulldowns, 0805 |
| R3-R4, R7 | 3 | 4.7 kOhm LED resistors, 0805 |
| C1-C2 | 2 | 100 uF/25 V electrolytic; 100 nF/50 V ceramic |
| F1-F2 | 2 | 10 A nominal branch fuses |
| F3 | 1 | 250 mA coil fuse |
| J1-J4 | 4 | 1 input, 2 outputs, 1 logic header |

**Do not mix Rev A relay components and R4 footprints.** They are separate circuit revisions.

## Price breakdown

Exact seller, shipping, taxes and final part selections have **not been established** from the files found. A final total would be misleading. Use [`BOM_TRACKER.csv`](BOM_TRACKER.csv) to enter actual quantities and prices before ordering. The total project cost is therefore currently **TBD**.