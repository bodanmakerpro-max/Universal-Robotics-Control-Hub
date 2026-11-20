# Design history and changing requirements

This project has changed over time. **Do not combine specs from different versions** as if they all exist on the same finished board.

## 30-31 January 2026: all-in-one concept

Initial discussion described an ESP32-based universal robot controller with a broad wish list:

- 7.5-24 V possible input range;
- four stepper drivers, three BLDC drivers, three brushed DC motor drivers;
- five servo ports, five analog inputs, five digital connections, five I2C ports and three serial links;
- Wi-Fi, Bluetooth and possible radio expansions.

A Teensy 4.1 and more capable controllers were also considered. These were **requirements and candidates**, not proven installed features. Later presentation work shifted to STM32, including an STM32G91XC candidate and smaller demonstrated channel counts.

## September-October 2026: modular STM32 approach

Work with Dusan focused on a reusable STM32 main board with **two interchangeable expansion slots** and power switching for modules. Mixed brushed DC, BLDC, stepper, servo or sensor daughterboards were discussed. PLECS was used for BLDC control simulations. The final hardware version from that seminar was reported not saved and needed redesign. Previous motor counts were scenario-dependent and should not be represented as simultaneous R4 capacity.

## 6 November 2026: dual relay Rev A

A two-output 12 V relay circuit was documented using **G2RL-1A-E** relays, AO3400A drive MOSFETs, flyback diodes and fuses. The document reports KiCad ERC success but no routed, built or load-tested hardware at that point. The PDF is archived under `hardware/relay-revA`.

## 19 November 2026: STM32 dual-module carrier R4

The most recent available design documentation uses **NUCLEO-F401RE**, two 2x7 module headers, two 12 V relay outputs, dedicated 5 V/3.3 V rails, five LEDs and a four-layer PCB. It includes detailed pin assignments and reports successful ERC/DRC, but has **not** been fabricated/tested.

The R4 source documents name different relay parts (**Songle SRD-12VDC-SL-C** and PN2222ABU drivers) from the Rev A board. R4 also requires **regulated 12 V input only**, not the initial 7.5-24 V aspiration.

## 20 November 2026: repository documentation

The available historical presentations, rendered diagrams and PDF schematics were collected here with a status ledger and test plan. The original editable R4 KiCad files were **not available to include**. There is a link to older KiCad source held in the existing `Petnica-proekti-2026` GitHub repository.