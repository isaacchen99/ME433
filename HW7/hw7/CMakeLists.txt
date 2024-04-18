add_executable(hw7
        hw7.c
        )

# pull in common dependencies
target_link_libraries(hw7 pico_stdlib hardware_spi hardware_i2c hardware_uart hardware_adc)
# pico_enable_stdio_usb(template 1)
# pico_enable_stdio_uart(template 0)

# create map/bin/hex file etc.
pico_add_extra_outputs(hw7)