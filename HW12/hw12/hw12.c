#include "hardware/pwm.h"
#include <string.h> // for memset
#include <stdio.h>
#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "hardware/uart.h"
#include "hardware/irq.h"

#define PWMPin 2 // set GPIO 2 as PWMPin

int main(void) {
  stdio_init_all();

  gpio_set_function(PWMPin, GPIO_FUNC_PWM); // Set the PWMPin to be PWM
  uint slice_num = pwm_gpio_to_slice_num(PWMPin); // Get PWM slice number
  float div = 40.0; // must be between 1-255
  pwm_set_clkdiv(slice_num, div); // divider
  uint16_t wrap = 62500; // when to rollover, must be less than 65535
  pwm_set_wrap(slice_num, wrap);
  pwm_set_enabled(slice_num, true); // turn on the PWM

  while (true) {
    for (int i = 0; i < 8000; i = i + 40) {
      if (i <= 4000) {
        float percent = i / 4000.0;
        percent = percent * 10.0;
        percent = percent + 2.5;

        float dutyCycle = percent; // 1.0%
        uint16_t wrapScaled = (uint16_t) ((dutyCycle * wrap) / 100.0);

        pwm_set_gpio_level(PWMPin, wrapScaled); // set the duty cycle to scaled wrap
      } else if (i > 4000) {
        float percent = (8000 - i) / 4000.0;
        percent = percent * 10.0;
        percent = percent + 2.5;

        float dutyCycle = percent; // 1.0%
        uint16_t wrapScaled = (uint16_t) ((dutyCycle * wrap) / 100.0);

        pwm_set_gpio_level(PWMPin, wrapScaled); // set the duty cycle to scaled wrap
      }

      sleep_ms(20);
    }
  }
}