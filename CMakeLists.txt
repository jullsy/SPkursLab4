
cmake_minimum_required(VERSION 3.10)

project(calculator_project)

add_library(calculator STATIC calculator.c)

add_executable(calculator_app main.c)
target_link_libraries(calculator_app PRIVATE calculator)

