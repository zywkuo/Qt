cmake_minimum_required(VERSION 3.16)

project(mobileapp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS QuickControls2)

qt_add_executable(appmobileapp
    main.cpp
    # icon设置 搭配icon.rc
    icon.rc
)

qt_add_qml_module(appmobileapp
    URI mobileapp
    VERSION 1.0
    QML_FILES Main.qml
    RESOURCES images
)

set_target_properties(appmobileapp PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appmobileapp
    PRIVATE Qt6::Quick
)

target_link_libraries(appmobileapp
    PRIVATE Qt6::QuickControls2
)

install(TARGETS appmobileapp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
