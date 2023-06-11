import QtQuick
import QtQuick.Window
import QtQuick.Controls
import Qt.labs.platform as Platform
import QtQuick.Controls.Material

ApplicationWindow {
    width: 320
    height: 480
    visible: true
    title: qsTr("mobileapp")

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

    header: ToolBar {
        Material.background: Material.Orange
        ToolButton {
            // 要用svg
            icon.source: 'images/menu'
            onClicked: drawer.open()
        }
        Label {
            anchors.centerIn: parent
            text: 'mobileapp'
            font.pixelSize: 20
        }
    }

    Drawer {
        id: drawer
        width: parent.width / 3 * 2
        height: parent.height

        ListView {
            anchors.fill: parent
            model: ListModel {
                ListElement {
                    text: 'open...'
                    triggered: () => {
                                   fileOpenDialog.open()
                               }
                }
                ListElement {
                    text: 'about...'
                    triggered: () => {
                                   aboutDialog.open()
                               }
                }
            }

            delegate: ItemDelegate {
                text: model.text
                highlighted: ListView.isCurrentItem
                onClicked: {
                    drawer.close()
                    model.triggered()
                }
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
            text: '关于我们\n啦啦啦'
            horizontalAlignment: Text.AlignHCenter
        }
        standardButtons: Platform.StandardButton.ok
    }
}
