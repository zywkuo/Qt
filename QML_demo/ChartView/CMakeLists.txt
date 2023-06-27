cmake_minimum_required(VERSION 3.16)

project(ChartView VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)
find_package(Qt6 COMPONENTS Widgets REQUIRED)


qt_add_executable(appChartView
    main.cpp
)

qt_add_qml_module(appChartView
    URI ChartView
    VERSION 1.0
    QML_FILES Main.qml
)

set_target_properties(appChartView PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appChartView
    PRIVATE Qt6::Quick
)

target_link_libraries(appChartView PRIVATE Qt6::Widgets)

install(TARGETS appChartView
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
