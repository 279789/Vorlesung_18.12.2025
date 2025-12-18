cmake_minimum_required(VERSION 3.16)
project(MyCMakeLib)

add_library(${PROJECT_NAME} STATIC src/mylib.cpp)

target_include_directories(${PROJECT_NAME° PUBLIC include/)
