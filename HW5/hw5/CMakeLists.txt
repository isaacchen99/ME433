add_executable(hw5
        hw5.c
        )

# pull in common dependencies
target_link_libraries(hw5 pico_stdlib hardware_spi hardware_i2c)
# pico_enable_stdio_usb(hw5 1)
# pico_enable_stdio_uart(hw5 0)

# create map/bin/hex file etc.
pico_add_extra_outputs(hw5)