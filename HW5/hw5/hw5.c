#include <stdio.h>

#include "hardware/i2c.h"
#include "pico/binary_info.h"
#include "pico/stdlib.h"


#define LED_PIN 25
#define ADDR _u(0b0100000)
// hardware registers
#define REG_IODIR _u(0x00)
#define REG_GPIO _u(0x09)
#define REG_OLAT _u(0x0A)

void init_23008() {
    uint8_t buf[2];

    // send register number followed by its corresponding value
    buf[0] = REG_IODIR;
    buf[1] = 0b01111111;
    i2c_write_blocking(i2c_default, ADDR, buf, 2, false);
}

void set_23008(unsigned int val) {
    uint8_t buf[2];

    // send register number followed by its corresponding value
    buf[0] = REG_OLAT;
    buf[1] = val << 7;
    i2c_write_blocking(i2c_default, ADDR, buf, 2, false);
}

unsigned int read_23008() {
    uint8_t buf[1];
    uint8_t reg = REG_GPIO;
    i2c_write_blocking(i2c_default, ADDR, &reg, 1, true);  // true to keep master control of bus
    i2c_read_blocking(i2c_default, ADDR, buf, 1, false);  // false - finished with bus

    if (buf[0] & 0b1 == 0b1) {
      return 1;
    }
    else {
      return 0;
    }
}

int main() {
    stdio_init_all();

    // initialize heartbeat LED
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT); // config as output

    // I2C is "open drain", pull ups to keep signal high when no data is being sent
    i2c_init(i2c_default, 100 * 1000);
    gpio_set_function(PICO_DEFAULT_I2C_SDA_PIN, GPIO_FUNC_I2C);
    gpio_set_function(PICO_DEFAULT_I2C_SCL_PIN, GPIO_FUNC_I2C);

    // configure 23008
    init_23008();

    while (1) {
        // blink GPIO 25 as heartbeat
        gpio_put(LED_PIN, 1);
        sleep_ms(100);
        gpio_put(LED_PIN, 0);

        unsigned int button_pressed = read_23008(); // read from GP0

        if (button_pressed == 1) { // if GP0 high, set GP7 high
          set_23008(1);
        } else if (button_pressed == 0) { // else set GP7 low
          set_23008(0);
        }

        sleep_ms(100);
    }
}
