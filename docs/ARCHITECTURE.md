# Architecture

The Universal Robotics Control Hub is designed as a **base controller plus interchangeable modules** rather than a different custom controller for every robot.

## Main blocks (R4 design)

1. **12 V input:** a single regulated 12 V supply enters through an XT60-style connector. A main fuse protects the feed; branch fuses protect downstream sections. Polarity needs checking because electronic reverse-polarity protection is not installed.
2. **Power conversion:** separate LM2596T-5.0 and LM2596T-3.3 buck stages supply two shared logic/module rails, each rated to deliver a total target of 1 A, not 1 A per connected device.
3. **STM32 control:** the R4 guide assumes an ST NUCLEO-F401RE, with 3.3 V GPIO signals and PWM-capable pins on both module headers.
4. **Expansion:** two 14-pin headers. Each header carries 10 signal pins, 5 V, 3.3 V and two GND contacts. Application-specific daughterboards can connect motor drivers or sensor interfaces. They are not included as proven R4 modules.
5. **Switched outputs:** two relay channels switch the 12 V input bus to downstream modules, with a design target of 10 A each pending physical verification.
6. **Feedback indicators:** LEDs indicate incoming and regulated power plus relay coil activation. A relay LED does not prove that the relay contact closed or an output has power.

## Control and noisy power paths

Motor current must not return through STM32 signal headers. Heavy motor/load returns should use the intended power-ground copper. Daughterboards must account for high inrush, stalled motors, motor braking/regeneration, and electrical noise. Shared grounds are required where the signal interface expects them.

## PWM limits

The guide assigns 20 signal GPIO positions, but **PC8 and PB0 share TIM3 CH3**, reducing the possible independent PWM duty channels to 19. Outputs sharing a timer also share its period/frequency. PB13, PB14 and PB15 require complementary TIM1 PWMN setup. GPIO power level is 3.3 V.

## Modules in the broader project plan

- Brushed DC H-bridge module
- BLDC driver/controller module with validated power stage and protection
- Stepper driver module
- Servo distribution module with appropriate separate supply budget
- Sensor/I2C/UART interface modules
- Optional wireless and radio communications

These are intended module classes. No claim is made that all are fully implemented or test-validated.