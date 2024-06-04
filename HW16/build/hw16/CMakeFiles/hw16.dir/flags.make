# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# compile ASM with /opt/homebrew/bin/arm-none-eabi-gcc
# compile C with /opt/homebrew/bin/arm-none-eabi-gcc
# compile CXX with /opt/homebrew/bin/arm-none-eabi-g++
ASM_DEFINES = -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_RP2040_USB_DEVICE_UFRAME_FIX=1 -DPICO_TARGET_NAME=\"hw16\" -DPICO_USE_BLOCKED_RAM=0

ASM_INCLUDES = -I/Users/ichen/Pico/pico-sdk/src/common/pico_stdlib/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_gpio/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_base/include -I/Users/ichen/Documents/GitHub/ME433/HW16/build/generated/pico_base -I/Users/ichen/Pico/pico-sdk/src/boards/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_platform/include -I/Users/ichen/Pico/pico-sdk/src/rp2040/hardware_regs/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_base/include -I/Users/ichen/Pico/pico-sdk/src/rp2040/hardware_structs/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_claim/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_sync/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_irq/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_sync/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_time/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_timer/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_util/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_uart/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_resets/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_clocks/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_pll/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_vreg/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_watchdog/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_xosc/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_divider/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_runtime/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_printf/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_bit_ops/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_divider/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_double/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_float/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_malloc/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_bootrom/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_binary_info/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_stdio/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_stdio_usb/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_unique_id/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_flash/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_usb_reset_interface/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_int64_ops/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_mem_ops/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/boot_stage2/include -I/Users/ichen/Pico/pico-sdk/lib/tinyusb/src -I/Users/ichen/Pico/pico-sdk/lib/tinyusb/src/common -I/Users/ichen/Pico/pico-sdk/lib/tinyusb/hw -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_spi/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_pwm/include

ASM_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -ffunction-sections -fdata-sections

C_DEFINES = -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_RP2040_USB_DEVICE_UFRAME_FIX=1 -DPICO_TARGET_NAME=\"hw16\" -DPICO_USE_BLOCKED_RAM=0

C_INCLUDES = -I/Users/ichen/Pico/pico-sdk/src/common/pico_stdlib/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_gpio/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_base/include -I/Users/ichen/Documents/GitHub/ME433/HW16/build/generated/pico_base -I/Users/ichen/Pico/pico-sdk/src/boards/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_platform/include -I/Users/ichen/Pico/pico-sdk/src/rp2040/hardware_regs/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_base/include -I/Users/ichen/Pico/pico-sdk/src/rp2040/hardware_structs/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_claim/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_sync/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_irq/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_sync/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_time/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_timer/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_util/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_uart/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_resets/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_clocks/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_pll/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_vreg/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_watchdog/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_xosc/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_divider/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_runtime/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_printf/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_bit_ops/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_divider/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_double/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_float/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_malloc/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_bootrom/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_binary_info/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_stdio/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_stdio_usb/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_unique_id/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_flash/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_usb_reset_interface/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_int64_ops/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_mem_ops/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/boot_stage2/include -I/Users/ichen/Pico/pico-sdk/lib/tinyusb/src -I/Users/ichen/Pico/pico-sdk/lib/tinyusb/src/common -I/Users/ichen/Pico/pico-sdk/lib/tinyusb/hw -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_spi/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_pwm/include

C_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -std=gnu11 -ffunction-sections -fdata-sections

CXX_DEFINES = -DCFG_TUSB_MCU=OPT_MCU_RP2040 -DCFG_TUSB_OS=OPT_OS_PICO -DLIB_PICO_BIT_OPS=1 -DLIB_PICO_BIT_OPS_PICO=1 -DLIB_PICO_DIVIDER=1 -DLIB_PICO_DIVIDER_HARDWARE=1 -DLIB_PICO_DOUBLE=1 -DLIB_PICO_DOUBLE_PICO=1 -DLIB_PICO_FIX_RP2040_USB_DEVICE_ENUMERATION=1 -DLIB_PICO_FLOAT=1 -DLIB_PICO_FLOAT_PICO=1 -DLIB_PICO_INT64_OPS=1 -DLIB_PICO_INT64_OPS_PICO=1 -DLIB_PICO_MALLOC=1 -DLIB_PICO_MEM_OPS=1 -DLIB_PICO_MEM_OPS_PICO=1 -DLIB_PICO_PLATFORM=1 -DLIB_PICO_PRINTF=1 -DLIB_PICO_PRINTF_PICO=1 -DLIB_PICO_RUNTIME=1 -DLIB_PICO_STANDARD_LINK=1 -DLIB_PICO_STDIO=1 -DLIB_PICO_STDIO_USB=1 -DLIB_PICO_STDLIB=1 -DLIB_PICO_SYNC=1 -DLIB_PICO_SYNC_CRITICAL_SECTION=1 -DLIB_PICO_SYNC_MUTEX=1 -DLIB_PICO_SYNC_SEM=1 -DLIB_PICO_TIME=1 -DLIB_PICO_UNIQUE_ID=1 -DLIB_PICO_UTIL=1 -DPICO_BOARD=\"pico\" -DPICO_BUILD=1 -DPICO_CMAKE_BUILD_TYPE=\"Debug\" -DPICO_COPY_TO_RAM=0 -DPICO_CXX_ENABLE_EXCEPTIONS=0 -DPICO_NO_FLASH=0 -DPICO_NO_HARDWARE=0 -DPICO_ON_DEVICE=1 -DPICO_RP2040_USB_DEVICE_UFRAME_FIX=1 -DPICO_TARGET_NAME=\"hw16\" -DPICO_USE_BLOCKED_RAM=0

CXX_INCLUDES = -I/Users/ichen/Pico/pico-sdk/src/common/pico_stdlib/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_gpio/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_base/include -I/Users/ichen/Documents/GitHub/ME433/HW16/build/generated/pico_base -I/Users/ichen/Pico/pico-sdk/src/boards/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_platform/include -I/Users/ichen/Pico/pico-sdk/src/rp2040/hardware_regs/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_base/include -I/Users/ichen/Pico/pico-sdk/src/rp2040/hardware_structs/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_claim/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_sync/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_irq/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_sync/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_time/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_timer/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_util/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_uart/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_resets/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_clocks/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_pll/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_vreg/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_watchdog/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_xosc/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_divider/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_runtime/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_printf/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_bit_ops/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_divider/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_double/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_float/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_malloc/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_bootrom/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_binary_info/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_stdio/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_stdio_usb/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_unique_id/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_flash/include -I/Users/ichen/Pico/pico-sdk/src/common/pico_usb_reset_interface/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_int64_ops/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_mem_ops/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/boot_stage2/include -I/Users/ichen/Pico/pico-sdk/lib/tinyusb/src -I/Users/ichen/Pico/pico-sdk/lib/tinyusb/src/common -I/Users/ichen/Pico/pico-sdk/lib/tinyusb/hw -I/Users/ichen/Pico/pico-sdk/src/rp2_common/pico_fix/rp2040_usb_device_enumeration/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_spi/include -I/Users/ichen/Pico/pico-sdk/src/rp2_common/hardware_pwm/include

CXX_FLAGS = -mcpu=cortex-m0plus -mthumb -Og -g -std=gnu++17 -ffunction-sections -fdata-sections -fno-exceptions -fno-unwind-tables -fno-rtti -fno-use-cxa-atexit

