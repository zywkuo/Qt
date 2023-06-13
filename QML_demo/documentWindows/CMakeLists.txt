cmake_minimum_required(VERSION 3.16)

project(documentWindows VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)
find_package(Qt6 6.2 REQUIRED Widgets Quick)

qt_add_executable(appdocumentWindows
    main.cpp
)

qt_add_qml_module(appdocumentWindows
    URI documentWindows
    VERSION 1.0
    QML_FILES Main.qml DocumentWindows.qml

    RESOURCES images
)

set_target_properties(appdocumentWindows PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appdocumentWindows
    PRIVATE Qt6::Quick
)

target_link_libraries(appdocumentWindows
    PRIVATE Qt6::Widgets
)


install(TARGETS appdocumentWindows
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
