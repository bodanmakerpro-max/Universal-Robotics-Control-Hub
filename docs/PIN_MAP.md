# STM32 carrier R4 pin map

**Source:** `Elektronche_Carrier_Guide.pdf`, revision R4, 19 November 2026. Controller **NUCLEO-F401RE assumed**; validate your exact board, solder bridges and alternate functions before manufacturing or programming.

| Header pin | Module 1 (J4) | PWM alternative (M1) | Module 2 (J5) | PWM alternative (M2) |
| --- | --- | --- | --- | --- |
| 1 | GND | - | GND | - |
| 2 | 5 V | Fused supply | 5 V | Fused supply |
| 3 | PC8 | TIM3 CH3 AF2 | PB14 | TIM1 CH2N AF1 |
| 4 | PB8 | TIM4 CH3 AF2 | PB3 | TIM2 CH2 AF1 |
| 5 | PC6 | TIM3 CH1 AF2 | PB13 | TIM1 CH1N AF1 |
| 6 | PB9 | TIM4 CH4 AF2 | PA2 | TIM5 CH3 AF2 |
| 7 | PA11 | TIM1 CH4 AF1 | PA0 | TIM5 CH1 AF2 |
| 8 | PA7 | TIM3 CH2 AF2 | PA3 | TIM5 CH4 AF2 |
| 9 | PB1 | TIM3 CH4 AF2 | PA1 | TIM5 CH2 AF2 |
| 10 | PB6 | TIM4 CH1 AF2 | PA15 | TIM2 CH1 AF1 |
| 11 | PB15 | TIM1 CH3N AF1 | PB0 | TIM3 CH3 AF2 |
| 12 | PB10 | TIM2 CH3 AF1 | PB7 | TIM4 CH2 AF2 |
| 13 | 3.3 V | Fused supply | 3.3 V | Fused supply |
| 14 | GND | - | GND | - |

Top view with the input XT60 at bottom: odd pins run left to right on the lower row, even pins left to right on the upper row; pin 1 is square.

| Function | MCU pin | Behavior |
| --- | --- | --- |
| Relay channel 1 | PC10 | HIGH = energized, LOW = off |
| Relay channel 2 | PC11 | HIGH = energized, LOW = off |

**Important setup constraints:**

- PC8 and PB0 share TIM3 CH3, so they cannot provide independent duty cycles at the same time.
- Timer channels from the same timer share the PWM period.
- PB13, PB14 and PB15 are TIM1 complementary PWM channels and require enabling PWMN.
- Release conflicting JTAG/trace functions for PA15 and PB3 while preserving SWD debugging.
- For PA2/PA3 the source guide calls for **SB62/SB63 closed** and **SB13/SB14 open** on the relevant Nucleo revision. This disables the ST-LINK virtual COM port. Confirm against ST manual UM1724 and the actual board.
- The two 5 V header branches together must stay inside **one shared 1 A 5 V budget**. Likewise for the 3.3 V branches.
- Do not apply 5 V to 3.3 V-only GPIO pins.