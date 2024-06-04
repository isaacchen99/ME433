#include "hardware/pwm.h"
#include <stdio.h>
#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "hardware/irq.h"

#define PWMPin 2 // set GPIO 2 as PWMPin

int main(void) {
	stdio_init_all();

    gpio_set_function(PWMPin, GPIO_FUNC_PWM); // Set the PWMPin to be PWM
    uint slice_num = pwm_gpio_to_slice_num(PWMPin); // Get PWM slice number
    float div = 1.0; // must be between 1-255
    pwm_set_clkdiv(slice_num, div); // divider
    uint16_t wrap = 2500; // when to rollover, must be less than 65535
    pwm_set_wrap(slice_num, wrap);
    pwm_set_enabled(slice_num, true); // turn on the PWM

    int dutyCycleInt = 0;
    
    while (1) {
        scanf("%d", &dutyCycleInt);

        // gain function
        if (dutyCycleInt < 50) {
            dutyCycleInt *= 2;
        } else {
            dutyCycleInt = 100;
        }
        printf("%d percent duty cycle requested\r\n", dutyCycleInt);

        uint16_t wrapScaled = (uint16_t) (((float) dutyCycleInt * wrap) / 100.0);
        pwm_set_gpio_level(PWMPin, wrapScaled); // set the duty cycle to scaled wrap

        sleep_ms(100);
    }
}