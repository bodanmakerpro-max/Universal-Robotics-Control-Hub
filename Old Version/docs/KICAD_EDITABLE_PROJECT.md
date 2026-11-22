# Editing the current KiCad project

Updated 22 November 2026.

## Source files

These **three files must remain together in the repository root**:

- **Unuversal robotic driver final versio.kicad_pro**: project-wide settings
- **Unuversal robotic driver final versio.kicad_sch**: editable schematic
- **Unuversal robotic driver final versio.kicad_pcb**: editable layout

The name is left exactly as used by the uploaded PCB's sheetfile properties and the schematic's symbol instance records. Changing only one filename may disconnect sheet and reference information. If you want a nicer project name, use KiCad's own project rename tools and verify the schematic/PCB references afterward.

## Opening

1. Download/extract the repository, or run **git clone https://github.com/bodanmakerpro-max/Universal-Robotics-Control-Hub.git**.
2. Use **KiCad 10** or a confirmed compatible version. The PCB source says version 20260206, generator pcbnew 10.0.
3. Open **Unuversal robotic driver final versio.kicad_pro**, then launch Schematic Editor or PCB Editor.
4. To edit symbol connections, change the schematic and use **Tools > Update PCB from Schematic**. Review changes before applying; do not automatically overwrite the existing layout.
5. To change routes, use PCB Editor. Verify the net assignments and layer for every rerouted signal.
6. Use ERC and DRC and save both results before ordering a board.

## Source inspection

- The uploaded schematic is present as native editable KiCad text, with embedded schematic symbol definitions and one main sheet.
- The uploaded PCB is present as native editable KiCad text, containing a board outline, footprints, pads, tracks, vias and filled GND zones.
- Four copper layers are defined. Existing tracks are on front, back and inner-2. Inner-1 contains a GND zone.
- Saved copper objects: 293 segments, 25 vias, three GND filled zones.
- Footprints: 68. At least 61 footprints contain a 3D-model reference, but that does **not** mean the referenced files are available.
- Schematic and PCB are files from the same supplied upload set, but their electrical agreement was not independently checked with KiCad.

## Missing items

The board references **20 distinct model paths** in its project-relative **models/** directory, but the 3D files were not uploaded. See [models/README.md](../models/README.md). KiCad may load the board with missing-model warnings or an incomplete 3D view. The custom Carrier_Custom footprint library is not included as a standalone .pretty library, though the placed footprints are embedded in the PCB.

A .kicad_prl file is **not** required to open the project. It is per-user editor state and stays ignored.

No verified electrical or manufacturing checks for this exact revision have been run in this environment. An inspection of text data is not a KiCad ERC or DRC pass.
