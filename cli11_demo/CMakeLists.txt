cmake_minimum_required(VERSION 3.16)
project(CLI11Demo)

include(FetchContent)

FetchContent_Declare(
	CLI11
	GIT_REPOSITORY https://github.com/CLIUtils/CLI11.git
	GIT_TAG v2.6.1 # or use main if you want latest
)

FetchContent_MakeAvailable(CLI11)

add_executable(${PROJECT_NAME} src/main.cpp)
target_link_libraries(${PROJECT_NAME} PRIVATE CLI11::CLI11)
