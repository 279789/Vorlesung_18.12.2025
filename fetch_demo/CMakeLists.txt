cmake_minimum_required(VERSION 3.10)
project(FetchContentDemo)

include(FetchContent)

FetchContent_Declare(
	stemgraph_cmake_lib
	GIT_REPOSITORY https://github.com/STEMgraph/cmake_test_library.git
	GIT_TAG master
)

FetchContent_MakeAvailable(stemgraph_cmake_lib)

add_executable(fetch_demo src/main.cpp)
target_link_libraries(fetch_demo PRIVATE STEMgraphCMakeLib)
