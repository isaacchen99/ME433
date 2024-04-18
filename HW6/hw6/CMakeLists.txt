add_executable(hw6
        hw6.c
        )

# pull in common dependencies
target_link_libraries(hw6 pico_stdlib hardware_spi hardware_i2c hardware_adc)
# pico_enable_stdio_usb(template 1)
# pico_enable_stdio_uart(template 0)

# create map/bin/hex file etc.
pico_add_extra_outputs(hw6)