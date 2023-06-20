cmake_minimum_required(VERSION 3.16)

project(attributeType VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)
find_package(Qt6 COMPONENTS QuickControls2 REQUIRED)


qt_add_executable(appattributeType
    main.cpp
    myobject.h
    myobject.cpp
)

qt_add_qml_module(appattributeType
    URI attributeType
    VERSION 1.0
    QML_FILES Main.qml
    RESOURCES
        images/1.jpg
)

set_target_properties(appattributeType PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appattributeType
    PRIVATE Qt6::Quick
)

target_link_libraries(appattributeType PRIVATE Qt6::QuickControls2)


install(TARGETS appattributeType
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
