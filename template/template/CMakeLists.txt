add_executable(template
        template
        )

# pull in common dependencies
target_link_libraries(template pico_stdlib hardware_spi)
# pico_enable_stdio_usb(template 1)
# pico_enable_stdio_uart(template 0)

# create map/bin/hex file etc.
pico_add_extra_outputs(template)