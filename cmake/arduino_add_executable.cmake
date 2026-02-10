function(arduino_add_executable target)
    set(sources ${ARGN})

    add_executable(${target} ${sources})

    # always link arduinocore and arduinoflags
    target_link_libraries(${target} PUBLIC ArduinoCore)
    target_link_libraries(${target} PUBLIC ArduinoFlags)

    # do the shit
    arduino_avr_hex(${target})

    if(NOT ARDUINO_PORT)
        if(WIN32)
            set(ARDUINO_PORT "COM1" CACHE STRING "The serial port for uploading using avrdude")
        else()
            set(ARDUINO_PORT "/dev/ttyACM0" CACHE STRING "The serial port for uploading using avrdude")
        endif()
    endif()

    # upload the shit
    arduino_avr_upload(${target} ${ARDUINO_PORT})
endfunction()