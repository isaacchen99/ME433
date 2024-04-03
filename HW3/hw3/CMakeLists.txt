add_executable(hw3
        hw3
        )

# pull in common dependencies
target_link_libraries(hw3 pico_stdlib hardware_adc)
pico_enable_stdio_usb(hw3 1)
pico_enable_stdio_uart(hw3 0)

# create map/bin/hex file etc.
pico_add_extra_outputs(hw3)