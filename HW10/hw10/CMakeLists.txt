add_executable(hw12
        hw12.c
        )

# pull in common dependencies
target_link_libraries(hw12 pico_stdlib hardware_spi hardware_pwm)
#pico_enable_stdio_usb(hw10 1)
#pico_enable_stdio_uart(hw10 0)

# create map/bin/hex file etc.
pico_add_extra_outputs(hw12)
