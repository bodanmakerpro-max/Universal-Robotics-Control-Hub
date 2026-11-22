# Roadmap

## Next: finish and validate the current KiCad design

1. Open the latest three matching source files in KiCad 10.
2. Run ERC and DRC on the exact uploaded design, and fix all real problems.
3. Inspect the two STM32 Morpho headers, pin-to-header routing, relay drive and buck-regulator power paths.
4. Restore the missing models/ 3D assets and any custom footprint libraries needed for future part updates.
5. Confirm current/temperature limits of input connectors, relay contacts, fuses and copper pours.
6. Create and review fabrication Gerber/drill files and an exact purchase BOM.
7. Build and low-voltage/current-limit test the first real board. Record measured outputs and thermal performance.
8. Develop and test firmware against the actual STM32 board.

## Later expansions

- Brushed DC, BLDC, stepper, servo and sensor daughterboards.
- Reverse-polarity protection, regenerative-energy handling and fault/current feedback.
- More I2C, UART and wireless integration.
- Firmware modules, schematics and documented testing procedures for each daughterboard.

The features under **Later expansions** are goals, not capabilities already proven on the supplied PCB.
