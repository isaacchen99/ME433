# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/ichen/Pico/pico-sdk/tools/pioasm"
  "/Users/ichen/Documents/GitHub/ME433/HW12/build/pioasm"
  "/Users/ichen/Documents/GitHub/ME433/HW12/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm"
  "/Users/ichen/Documents/GitHub/ME433/HW12/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/tmp"
  "/Users/ichen/Documents/GitHub/ME433/HW12/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp"
  "/Users/ichen/Documents/GitHub/ME433/HW12/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src"
  "/Users/ichen/Documents/GitHub/ME433/HW12/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/ichen/Documents/GitHub/ME433/HW12/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/ichen/Documents/GitHub/ME433/HW12/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
