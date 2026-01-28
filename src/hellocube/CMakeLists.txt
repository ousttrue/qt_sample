set(TARGET_NAME hellocube)

# Copyright (C) 2022 The Qt Company Ltd. SPDX-License-Identifier:
# LicenseRef-Qt-Commercial OR BSD-3-Clause

qt_add_executable(${TARGET_NAME} main.cpp)

set_target_properties(${TARGET_NAME} PROPERTIES WIN32_EXECUTABLE TRUE
                                                MACOSX_BUNDLE TRUE)

target_link_libraries(${TARGET_NAME} PUBLIC Qt6::Core Qt6::Gui Qt6::Quick
                                            Qt6::Quick3D)

qt6_add_qml_module(
  ${TARGET_NAME}
  URI
  Example
  VERSION
  1.0
  QML_FILES
  main.qml
  RESOURCES
  qt_logo.png
  NO_RESOURCE_TARGET_PATH)

