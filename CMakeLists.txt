cmake_minimum_required(VERSION 3.6)

file(GLOB native_srcs "${CMAKE_SOURCE_DIR}/jni/src/add.cpp")
include_directories(${CMAKE_SOURCE_DIR}/jni)

add_library(add SHARED ${native_srcs}) 

set(distribution_DIR ${CMAKE_CURRENT_SOURCE_DIR}/output)
set_target_properties(add
                      PROPERTIES
                      LIBRARY_OUTPUT_DIRECTORY "${distribution_DIR}/lib/${ANDROID_ABI}"
                      )
add_custom_command(TARGET add POST_BUILD
                   COMMAND "${CMAKE_COMMAND}" -E
                   copy "${CMAKE_CURRENT_SOURCE_DIR}/jni/include/add.h" "${distribution_DIR}/include/add.h"
                   COMMENT "Copying gperf to output directory")

target_link_libraries(add)
