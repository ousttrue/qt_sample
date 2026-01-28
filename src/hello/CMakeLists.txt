set(TARGET_NAME helloworld)
qt_add_executable(${TARGET_NAME} main.cpp)
target_link_libraries(${TARGET_NAME} PRIVATE Qt6::Core Qt6::Gui Qt6::Qml
                                             Qt6::QuickControls2)
