# Firmware status

There is **no verified, complete flashable firmware project** for the R4 carrier in the currently available source files.

`stm32_hal_relay_example.c` shows a small HAL-style control interface using the documented PC10/PC11 relay signals. It depends on a real STM32CubeIDE/CubeMX HAL project and properly configured GPIO. It is deliberately not advertised as complete firmware.

Expected safe boot behavior: PC10 = LOW and PC11 = LOW. Use the exact STM32 pin map in [`../docs/PIN_MAP.md`](../docs/PIN_MAP.md) and check that the Nucleo revision matches.