cmake_minimum_required(VERSION 3.0)
project(iseven_test)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/out)

add_executable(iseven_test
    is_even.cpp
    test.cpp
    )
target_include_directories(iseven_test
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}
    )
