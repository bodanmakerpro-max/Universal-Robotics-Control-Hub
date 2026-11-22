# Universal Robotics Control Hub

**Editable STM32 robotics carrier with two expansion headers, power conversion and two switched 12 V outputs.**

Latest uploaded KiCad project: **22 November 2026**. Designed by Bodan Nikolov. Historical design and seminar work also involved Dusan.

![Routing preview drawn from the uploaded KiCad PCB](assets/latest_PCB_routing_preview.png)

> **Source status:** The actual schematic, PCB and project files are available and editable, all with the same file name. This is NOT a claim that the PCB has passed fresh ERC/DRC, that the hardware is manufactured, or that it is electrically tested. The 3D model files referenced by the board are not yet included.

## Download and open the editable project

1. Use **Code > Download ZIP** on this repository, then extract the ZIP.
2. Install a KiCad version compatible with the PCB, which identifies itself as **KiCad 10.0**. Older versions may not be able to open it.
3. Open **[Unuversal robotic driver final versio.kicad_pro](Unuversal%20robotic%20driver%20final%20versio.kicad_pro)** in KiCad Project Manager.
4. Open the **schematic** and **PCB Editor** from the project. Both files use the same project base name, including the original spelling.
5. Run **Electrical Rules Checker (ERC)** in Schematic Editor and **Design Rules Checker (DRC)** in PCB Editor before creating any manufacturing files.

### Actual editable files

| File | What it contains |
| --- | --- |
| [Project settings](Unuversal%20robotic%20driver%20final%20versio.kicad_pro) | KiCad project and board design settings |
| [Schematic](Unuversal%20robotic%20driver%20final%20versio.kicad_sch) | Editable circuit and embedded schematic symbol definitions |
| [PCB](Unuversal%20robotic%20driver%20final%20versio.kicad_pcb) | Editable 180 x 145 mm board with copper tracks, parts, vias and zones |

**Why the spelling is unusual:** The uploaded PCB's sheet references and the schematic's symbol-instance references use the name **Unuversal robotic driver final versio**. Keeping that exact base name avoids changing those internal links simply to make the title prettier.

The uploaded .kicad_prl file was intentionally excluded: it is local editor/window state, not required for sharing a KiCad design, and is already covered by .gitignore.

## What is on the current board

| Item | Information from the uploaded files |
| --- | --- |
| Board outline | 180 x 145 mm; declared 1.6 mm thickness |
| Copper layers | F.Cu, In1.Cu, In2.Cu and B.Cu |
| Footprints placed | 68 |
| Copper segments | 293: 172 front, 66 inner-2, 55 back |
| Vias | 25 |
| Copper fill zones | 3 GND zones: front, inner-1 and back |
| Named nets referenced by pads/tracks/zones | 99 |
| Main hardware | STM32 Nucleo Morpho sockets, two 2x7 expansion headers, two relays, fuse branches, separate 5 V and 3.3 V buck-regulator stages, XT60-style connectors |

These counts describe saved objects in the supplied PCB, not proof that every connection is correctly routed. The image above is a **generated 2D preview of the uploaded PCB data**, not a photograph of a built board and not a KiCad DRC screenshot.

## Function of the hub

The board is a reusable base controller for robotics prototypes. It connects an STM32 Nucleo to two external modules, supplies regulated rails and switches two 12 V output branches through relays. Suitable module types could include brushed-motor, stepper, servo and sensor interfaces. The board itself does not contain all of those motor drivers.

The earlier R4 guide documents a **regulated 12 V input** and **10 A target per relay-switched branch**. Those are design targets, not measured or certified continuous ratings. Check relay, connector, copper, fuse, thermal and supply limits before applying load.

## Important limits and missing items

- **Missing 3D models:** The PCB refers to **20 distinct STEP/WRL model files** in a project-relative models folder which is not present in this repository. Some components will not appear correctly in 3D Viewer. The PCB footprints themselves are embedded and editable.
- **Custom libraries:** Several footprints use a Carrier_Custom library identifier; the existing footprint definitions are stored in the PCB, but a separate editable custom library has not been supplied.
- **Verification:** A newer ERC/DRC report for these exact uploaded files has not been generated here. The 19 November R4 guide reported passing checks on that earlier documented design, not verified checks for this upload.
- **Production:** No fresh Gerber/drill pack, completed supplier BOM, assembled unit or load-test results have been supplied.
- **Power safety:** No verified reverse-polarity protection or safe regenerative-energy handling. Do not connect large motor loads without testing.

## Repository guide

- [How to open and edit the source](docs/KICAD_EDITABLE_PROJECT.md)
- [Current validation and outstanding items](docs/VALIDATION_STATUS.md)
- [Project status](docs/PROJECT_STATUS.md)
- [Power, wiring and hardware specs from the R4 reference](docs/HARDWARE_SPECS.md)
- [Pin map](docs/PIN_MAP.md)
- [Architecture](docs/ARCHITECTURE.md)
- [BOM and parts tracker](docs/BOM.md)
- [Test plan and safety notes](docs/TEST_PLAN.md)
- [3D model requirements](models/README.md)
- [Routing evolution](hardware/routing-history/README.md)
- [Historical R4 guide and schematic PDFs](hardware/rev4/README.md)
- [Earlier archived KiCad work](hardware/legacy-kicad/README.md)
- [Firmware examples](firmware/README.md)
- [Project history and future plans](docs/DESIGN_HISTORY.md)

The PDF guides, early design files, images and presentations are historical resources, not substitutes for the latest editable PCB.

## License

No open-source license has been selected. Do not assume unrestricted reuse rights.

### One specific issue to fix before fabrication

A source-geometry check also found **one 0.2 mm F.Cu segment outside the board outline**, at negative board coordinates, with no assigned net. It was left unchanged in the uploaded source to preserve your design. Remove or correct it in KiCad and run DRC before ordering boards. See [validation status](docs/VALIDATION_STATUS.md).
