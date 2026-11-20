/* Example excerpt for an STM32Cube/HAL project, NOT a standalone build.
 * R4 carrier documentation: PC10 = Relay 1, PC11 = Relay 2, HIGH = ON.
 * Configure both pins as push-pull outputs with a safe LOW initial level
 * in your actual CubeMX / hardware project before enabling power outputs.
 * Does not replace hardware interlocks, current limiting, or fault protection.
 */
#include "stm32f4xx_hal.h"

void Hub_RelaysOff(void)
{
    HAL_GPIO_WritePin(GPIOC, GPIO_PIN_10 | GPIO_PIN_11, GPIO_PIN_RESET);
}

void Hub_RelaySet(uint8_t channel, uint8_t enabled)
{
    uint16_t pin;
    if (channel == 1U)      pin = GPIO_PIN_10;
    else if (channel == 2U) pin = GPIO_PIN_11;
    else return;  /* Invalid channel: do nothing */

    HAL_GPIO_WritePin(GPIOC, pin, enabled ? GPIO_PIN_SET : GPIO_PIN_RESET);
}