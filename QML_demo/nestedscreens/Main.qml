import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    width: 320
    height: 480
    visible: true
    title: qsTr("Stack")

    header: ToolBar{

    }

    Drawer {
        id:drawer
    }

    StackView{
        id:stackView
        anchors.fill: parent

        initialItem: Home{}
    }
}
