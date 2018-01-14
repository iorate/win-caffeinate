
# win-caffeinate
#
# Copyright iorate 2018.
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE_1_0.txt or copy at
# http://www.boost.org/LICENSE_1_0.txt)

cmake_minimum_required(VERSION 3.0.2)

project(win-caffeinate)

if(CMAKE_CXX_COMPILER_ID MATCHES MSVC)
  add_compile_options(/std:c++14 /WX /W4 /wd4189)
else(CMAKE_CXX_COMPILER_ID MATCHES GNU)
  add_compile_options(-std=c++14 -Werror -Wall -Wextra -Wpedantic -Wno-missing-field-initializers)
endif()

include_directories(${PROJECT_SOURCE_DIR}/nonsugar)

add_executable(caffeinate main.cpp)
