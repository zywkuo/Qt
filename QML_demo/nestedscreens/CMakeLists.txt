cmake_minimum_required(VERSION 3.16)

project(nestedscreens VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)
find_package(Qt6 COMPONENTS QuickControls2 REQUIRED)


qt_add_executable(appnestedscreens
    main.cpp
)

qt_add_qml_module(appnestedscreens
    URI nestedscreens
    VERSION 1.0
    QML_FILES Main.qml Home.qml About.qml Profile.qml EditProfile.qml swipeFile/Swipe1.qml swipeFile/Swipe2.qml swipeFile/Swipe3.qml
    RESOURCES images/icon.ico
)

set_target_properties(appnestedscreens PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appnestedscreens
    PRIVATE Qt6::Quick
)
target_link_libraries(appnestedscreens
    PRIVATE Qt6::QuickControls2
)
install(TARGETS appnestedscreens
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
