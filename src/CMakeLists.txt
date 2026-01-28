cmake_minimum_required(VERSION 3.20...3.27)

project(
  helloworld
  VERSION 1.0.0
  LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)
if(NOT PROJECT_SOURCE_DIR STREQUAL PROJECT_BINARY_DIR)
  file(
    GENERATE
    OUTPUT ${PROJECT_BINARY_DIR}/.gitignore
    CONTENT "*")
endif()

find_package(Qt6 REQUIRED COMPONENTS Core Gui Qml QuickControls2)
qt_standard_project_setup()

subdirs(hello)
