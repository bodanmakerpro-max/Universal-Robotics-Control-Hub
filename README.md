# Universal Robotics Control Hub

STM32-based robotics control PCB with two expansion connectors, two switched 12 V outputs, and regulated 5 V and 3.3 V power.

![Latest PCB routing preview](Project%20Info/latest_PCB_routing_preview.png)

## Open the editable design

1. Click **Code > Download ZIP** on GitHub and extract it.
2. Open **KiCad/Unuversal robotic driver final versio.kicad_pro** in KiCad 10.
3. Open the schematic or PCB from KiCad Project Manager.

The `KiCad/` folder has the matching **.kicad_pro**, **.kicad_sch**, and **.kicad_pcb** files. All are editable. The original spelling is kept so the saved KiCad references are not changed.

## Folders

- **KiCad/** - current editable project (schematic, PCB, and settings).
- **Project Info/** - technical information, specifications, checks, and latest PCB screenshot.
- **Old Version/** - previous designs, pictures, reports, and other archived files. Not the current build.

See [Project Information](Project%20Info/PROJECT_INFO.md) for specs and known problems.

**Important:** The design has not been independently checked with KiCad ERC/DRC for this revision or tested on a physical board. Some 3D model files are missing. Do not order or power the board before checking the design.

Designed by Bodan Nikolov. Previous development and seminar work also involved Dusan.

No open-source license has been selected.
