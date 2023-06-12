import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt.labs.platform as Platform

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("desktopapp")

    background: Rectangle {
        color: 'darkGray'
    }
    Image {
        id: image
        // source: "images/1.jpeg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        asynchronous: true
    }

    header: ToolBar {
        Flow {
            anchors.fill: parent
            ToolButton {
                text: '打开'
                icon.source: 'images/football1.png'
                onClicked: fileOpenDialog.open()
            }
        }
    }

    Platform.FileDialog {
        // folder 控制打开文件夹位置
        // folder: StandardPaths.writableLocation(StandardPaths.DocumentsLocation)
        id: fileOpenDialog
        title: "选择图片"
        nameFilters: ["Images files(*.png *.jpg)", "all file(*.*)"]
        onAccepted: {
            image.source = fileOpenDialog.file
        }
    }

    menuBar: MenuBar {
        Menu {
            title: '&File'
            MenuItem {
                text: '&Open...'
                icon.source: 'images/football1.png'
                onTriggered: fileOpenDialog.open()
            }
        }
        Menu {
            title: '&Help'
            MenuItem {
                text: '&About...'
                onTriggered: aboutDialog.open()
            }
        }
    }

    Dialog {
        id: aboutDialog
        width: 300
        height: 150
        anchors.centerIn: parent
        title: 'about'
        Label {
            anchors.fill: parent
            text:'关于我们\n啦啦啦'
            horizontalAlignment: Text.AlignHCenter
        }
        standardButtons: Platform.StandardButton.ok
    }
}
