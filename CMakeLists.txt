cmake_minimum_required (VERSION 3.8)
project(GPU_Programming VERSION 1.0)
set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT GPU_Programming)

set (CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -DLOGGING")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -DLOGGING")

find_package(OpenCL REQUIRED PATHS ${PROJECT_SOURCE_DIR}/library_binaries)
include_directories(${OpenCL_INCLUDE_DIRS})

file(GLOB_RECURSE SOURCE "src/*.*")

add_executable (GPU_Programming ${SOURCE})
target_link_libraries(GPU_Programming OpenCL::OpenCL)