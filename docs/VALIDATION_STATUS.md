# Validation status of uploaded editable files

**Date:** 22 November 2026

| Check | Result | Meaning |
| --- | --- | --- |
| Native schematic included | YES | Editable .kicad_sch is in root |
| Native PCB included | YES | Editable .kicad_pcb is in root |
| Native project settings included | YES | Editable .kicad_pro is in root |
| Same source filenames | YES | All three share the exact base name used by internal sheet references |
| Text structure inspection | PARTIAL | Native KiCad file headers and board objects are present; this is not opening in KiCad |
| Full KiCad open test | NOT RUN | KiCad 10 was not available for GUI testing here |
| ERC for this upload | NOT RUN | Re-check in Schematic Editor |
| DRC for this upload | NOT RUN | Re-check in PCB Editor, including unconnected pads/nets |
| Schematic vs PCB update check | NOT RUN | Verify in KiCad |
| 3D model assets | INCOMPLETE | 20 unique local STEP/WRL paths referenced; no models folder supplied |
| Gerber/drill package | NOT PROVIDED | Generate only after all checks pass |
| Actual assembly and load testing | NOT PROVIDED | Do not assume manufacture-ready |

## PCB facts extracted from the file

- Outline: **180 x 145 mm**
- Thickness declared: **1.6 mm**
- Copper layers: **4**
- Footprints: **68**
- Segments: **293** (F.Cu 172, In2.Cu 66, B.Cu 55)
- Vias: **25**
- Copper zones: **3**, all assigned **GND**
- Distinct named nets seen on pads, tracks and zones: **99**
- PCB generator: **pcbnew 10.0**

A simple scan found no net with two or more pads and zero matching track segments or copper zones. That **does not prove connectivity**: individual wires, vias, pins and zone connections may still be disconnected, shorted or too close. Only KiCad's design-rule check and visual review can confirm the board routing.

## Limits of this review

The R4 PDF guide from 19 November 2026 states earlier ERC/DRC results; those results cannot be copied over as verified results for this latest upload. Existing filenames and PCB geometry do not prove a safe or working electrical circuit. Physical testing is still required, especially for 12 V power paths, buck regulators, relay operation, connector heating and 10 A output targets.

## Reproducible next checks

1. Open the root KiCad project in KiCad 10.
2. Run schematic ERC and fix or review every warning.
3. Run PCB DRC, including unconnected items, shorts, clearance, copper-to-edge and fabrication constraints.
4. Compare schematic and PCB using Update PCB from Schematic, without blindly applying changes.
5. Verify pin mapping of both STM32 Morpho connectors and the two expansion headers.
6. Supply missing models or switch the footprints to installed KiCad model paths.
7. Export Gerber/drill only after DRC and supply a tested BOM.
8. Build a low-current prototype with a protected bench power supply; log measured currents and temperatures.
