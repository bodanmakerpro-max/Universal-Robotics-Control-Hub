# Design and development history

This hub began as a concept for replacing loose recurring robot wiring with a reusable central control board. The early goals included direct connections for motor drivers, sensor modules, GPIO, power delivery and future custom robot modules. Seminar work also covered BLDC control ideas and PLECS simulations.

## Earlier revisions

- An earlier Petnica KiCad source set is archived in hardware/legacy-kicad. It is **not** the latest carrier PCB.
- The 6 November Rev A relay prototype is a separate hardware revision and remains available as a PDF.
- The 19 November R4 technical guide and schematic PDF document the STM32 dual-module carrier with switched 12 V power and 5 V/3.3 V stages. The R4 guide reported ERC and DRC pass at the time, but that claim has not been rechecked for later uploaded files.

## 22 November 2026 editable source upload

The user supplied a native PCB, schematic and project settings. The files were placed in the repository root under one exact basename matching the saved schematic instance references and PCB sheetfile properties: **Unuversal robotic driver final versio**. This resolves the previous missing editable board and settings problem.

A new current routing preview was generated from the actual PCB copper/pad geometry. The source review counted 68 footprints, 293 tracks, 25 vias, three GND zones and a 180 x 145 mm outline. KiCad 10 source format is used.

Still unresolved are full ERC/DRC, production outputs, 3D models, assembly and physical power testing. See [current status](PROJECT_STATUS.md) and [source audit](VALIDATION_STATUS.md).
