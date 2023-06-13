cmake_minimum_required(VERSION 3.16)

project(modelView VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)


qt_add_executable(appmodelView
    main.cpp
)

qt_add_qml_module(appmodelView
    URI modelView
    VERSION 1.0
    QML_FILES
        Main.qml
        RepeaterExample.qml
        ListViewExample.qml
        common/BlueBox.qml
        common/GreenBox.qml
)

set_target_properties(appmodelView PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appmodelView
    PRIVATE Qt6::Quick
)

install(TARGETS appmodelView
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
