cmake_minimum_required(VERSION 3.15..3.31)

include(FindPkgConfig)

project(wordle VERSION 0.1
               DESCRIPTION "some wordle clone"
               LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)

add_executable(wordle src/main.cpp)

target_include_directories(wordle PRIVATE include)

pkg_check_modules(SFML_GRAPHICS sfml-graphics)
target_include_directories(wordle PRIVATE ${SFML_GRAHPICS_INCLUDE_DIRS})
target_link_libraries(wordle PRIVATE ${SFML_GRAPHICS_LIBRARIES})

