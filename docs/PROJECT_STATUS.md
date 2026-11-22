# Project status: 22 November 2026

## Latest source available

The repository now includes the **actual editable KiCad schematic, PCB and .kicad_pro** from the 22 November upload. All three files are in the root and use the same project base name, **Unuversal robotic driver final versio**, to match the saved internal reference names.

A [new PCB routing preview](../assets/latest_PCB_routing_preview.png) was rendered from that uploaded board. It shows saved copper routing and part positions, not a KiCad GUI screenshot or built board.

## What the upload contains

- Four-layer STM32 dual-module carrier PCB, 180 x 145 mm.
- 68 footprints, 293 copper track segments, 25 vias and three GND copper zones.
- Two expansion headers, two relay-switched power branches, fuses and 5 V/3.3 V buck stages, as represented by saved board objects.
- Editable schematic with embedded symbol definitions.
- Matching KiCad project configuration.

## Still outstanding

- **No independent KiCad 10 open/ERC/DRC check of this exact revision.**
- No confirmed verification that the PCB netlist matches the schematic without errors.
- The local 3D-model files referenced by the PCB are missing from the repository.
- The independent Carrier_Custom footprint library is not included.
- No manufacturing Gerbers, drills or verified assembly BOM for this revision.
- No fabricated, powered or load-tested board, and no demonstrated continuous relay-output load rating.

## Earlier work retained as references

- R4 illustrated PDF guide and schematic, dated 19 November 2026, with previously reported (not retested here) ERC/DRC checks.
- Rev A relay-prototype PDF, separate from the latest board.
- Older Petnica KiCad project in the legacy folder, retained strictly as an archive.
- Early PCB illustrations and routing notes, firmware starting point and PLECS presentation.

Older R4 guidance about 20 expansion signals and the one-signal-layer routing illustration should not be treated as independently verified facts about the uploaded November 22 PCB. See [source audit](VALIDATION_STATUS.md), [project editing](KICAD_EDITABLE_PROJECT.md) and [routing history](../hardware/routing-history/README.md).
