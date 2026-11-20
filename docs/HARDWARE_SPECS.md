# R4 hardware specification (documented, not yet validated)

| Parameter | R4 design target/detail |
| --- | --- |
| Supply input | Regulated 12 V DC only |
| Main fuse F0 | 25 A |
| Relay output branch fuses F1 / F2 | 10 A each |
| Buck input fuses FI1 / FI2 | 1.25 A each |
| STM 5 V feed fuse F3 | 750 mA |
| Relay coil supply fuse F4 | 250 mA |
| Header supply fuses FA5 / FA3 / FB5 / FB3 | 1 A each |
| 5 V regulator | LM2596T-5.0, 1 A **shared output goal** |
| 3.3 V regulator | LM2596T-3.3, 1 A **shared output goal** |
| Switched power outputs | 2 relay-switched 12 V channels, 10 A target each, untested |
| Module headers | Two 2x7 2.54 mm pin headers |
| Module signals | 10 per header; 20 total |
| Controller reference | STM32 NUCLEO-F401RE |
| PCB outline | 180 x 145 mm |
| PCB thickness | 1.6 mm |
| Layer stack | 4 copper layers; 2 oz outer / 1 oz inner |
| Module placement | Header centered 75 mm above its output XT60 in the source guide |
| Status indicators | Relay1, Relay2, 12 V, 5 V, 3.3 V |

**Do not interpret fuse values as safe continuous current ratings.** Connector, fuse, copper, relay, enclosure and temperature limits still require independent calculation and bench measurement. A 25 A fuse can allow much more current for a limited time, depending on its curve.

The R4 guide states **no active reverse-polarity protection**. It also notes that the TVS does not safely absorb sustained motor regeneration.