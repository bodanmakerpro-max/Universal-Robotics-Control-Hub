# Project status (20 November 2026)

## Completed or documented

- Defined the motivation: reduce repeat wiring, loose connections, debug time and single-use PCBs.
- Compared platform needs for brushed DC, BLDC, stepper, servo, GPIO, ADC, I2C and serial systems.
- Moved from an early ESP32 all-in-one idea toward a modular **STM32** concept.
- Worked on BLDC commutation/control methods in **PLECS**, including six-step, sinusoidal control, back-EMF, torque ripple, PI and FOC ideas.
- Produced an earlier two-channel 12 V relay prototype design (Rev A, 6 November 2026).
- Produced R4 STM32 dual-module carrier documentation, dated 19 November 2026, with a revised pin map, PCB render and schematic PDF.
- R4 documentation reports KiCad **ERC = 0 violations** and **DRC = 0 violations, 0 unconnected, 0 mismatches**. This is a reported design-software check, not an independently repeated or electrical test.

## Not yet completed or not verified

- Actual assembly, power-up, thermal test and full-load verification of R4.
- Verified motor-driver daughterboards for every planned motor type.
- A complete tested STM32 firmware application.
- Measured maximum continuous current, reliability or failure rate.
- Final production-ready BOM with confirmed supplier prices and exact footprints.
- The **editable R4 KiCad PCB, schematic and project source** are not present in the source files available for this package. The PDF schematic and guide are included; do not treat them as an editable KiCad project.

## Source separation

The **Rev A relay board** used G2RL relays and AO3400A MOSFET drivers. The newer **R4 carrier** documents Songle SRD-12VDC-SL-C relays and PN2222ABU transistor drivers. They are not the same PCB version. The original `Petnica-proekti-2026` KiCad source is also an older source reference, not necessarily the current R4 board.