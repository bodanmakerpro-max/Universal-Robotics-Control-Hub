# PCB routing history

This directory records the development of the signal and power routing.

## Earlier routing

The archived Petnica project is an earlier independent KiCad version, preserved in [legacy-kicad](../legacy-kicad/README.md). A previously discussed hand-rerouted R3 board was not part of the source archived here. The [early reference image](../../assets/early_pcb_routing_reference.png) is a historical illustration and must not be confused with the exact R3 project.

## R4 documentation, 19 November 2026

![Earlier R4 routing illustration](../../assets/Elektronche_Carrier_R4_Routing.png)

The original R4 design report described 20 header signals routed on a single signal layer without signal vias. That statement refers to **that R4 diagram and report**, not to independent tests of later uploaded source files.

## Current uploaded KiCad PCB, 22 November 2026

![Latest routing preview](../../assets/latest_PCB_routing_preview.png)

This image was generated directly from the uploaded native PCB's copper segments, pad positions, vias and outline. It is a 2D preview, not a photograph and not a KiCad design-rule report. The current saved PCB has four defined copper layers and contains routed segments on F.Cu, In2.Cu and B.Cu.

The [current editable project](../../README.md#download-and-open-the-editable-project) is at the repository root. For exact board counts and validation limits see [VALIDATION_STATUS](../../docs/VALIDATION_STATUS.md). Do not assume the historical R4 single-layer signal-routing statement applies to this newest uploaded file.
