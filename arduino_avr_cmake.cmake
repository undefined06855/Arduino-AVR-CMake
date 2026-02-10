set(ARDUINO_AVR_CMAKE_DIR ${CMAKE_CURRENT_LIST_DIR})

# include everything
include(${ARDUINO_AVR_CMAKE_DIR}/cmake/lto.cmake)
include(${ARDUINO_AVR_CMAKE_DIR}/cmake/arduino_core.cmake)
include(${ARDUINO_AVR_CMAKE_DIR}/cmake/arduino_hex.cmake)
include(${ARDUINO_AVR_CMAKE_DIR}/cmake/arduino_upload.cmake)
include(${ARDUINO_AVR_CMAKE_DIR}/cmake/arduino_libs.cmake)
include(${ARDUINO_AVR_CMAKE_DIR}/cmake/arduino_add_executable.cmake)