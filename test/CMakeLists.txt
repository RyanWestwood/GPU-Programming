cmake_minimum_required(VERSION 3.0)
project(Test)
enable_testing()

add_executable(tester "src/test.cpp")
add_executable(failer "src/fail.cpp")
add_test(Tester tester)
add_test(Failer failer)