set_cache(UBINOS__UBICLIB__USE_STDIO_RETARGETING                                FALSE   BOOL)
set_cache(UBINOS__BSP__USE_DTTY                                                 FALSE   BOOL)

set_cache(STM32CUBEF2__BOARD_NAME "STM32F2XX_NUCLEO_144" STRING)

include(${PROJECT_UBINOS_DIR}/config/ubinos_nucleof207zg.cmake)

include(${PROJECT_LIBRARY_DIR}/stm32cubef2/config/stm32cubef2.cmake)

####

set(INCLUDE__APP TRUE)
set(APP__NAME "myuart_printf")

get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}/myuart_printf" ABSOLUTE)

file(GLOB_RECURSE _tmp_sources
    "${_tmp_source_dir}/*.c"
    "${_tmp_source_dir}/*.cpp"
    "${_tmp_source_dir}/*.S"
    "${_tmp_source_dir}/*.s")

set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_sources})

get_filename_component(_tmp_source_dir "${PROJECT_LIBRARY_DIR}/stm32cubef2/source/STM32Cube_FW_F2/Projects/NUCLEO-F207ZG/Examples/UART/UART_Printf" ABSOLUTE)

include_directories(${_tmp_source_dir}/Inc)


