add_executable(hw4
        hw4
        )

# pull in common dependencies
target_link_libraries(hw4 pico_stdlib hardware_spi)
# pico_enable_stdio_usb(hw4 1)
# pico_enable_stdio_uart(hw4 0)

# create map/bin/hex file etc.
pico_add_extra_outputs(hw4)