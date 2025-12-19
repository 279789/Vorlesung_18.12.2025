cmake_minimum_required(VERSION 3.16)
project(JSONDemo)

include(FetchContent)

FetchContent_Declare(
	json
	GIT_REPOSITORY https://github.com/nlohmann/json.git
	GIT_TAG v3.12.0
)

FetchContent_MakeAvailable(json)

add_executable(json_demo src/main.cpp)
target_link_libraries(json_demo PRIVATE nlohmann_json::nlohmann_json)
