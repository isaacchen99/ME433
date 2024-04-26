add_executable(hw9
        hw9.c
        )

# pull in common dependencies
target_link_libraries(hw9 pico_stdlib hardware_spi hardware_uart hardware_i2c hardware_adc)
pico_enable_stdio_usb(hw9 1)
pico_enable_stdio_uart(hw9 0)

# create map/bin/hex file etc.
pico_add_extra_outputs(hw9)
