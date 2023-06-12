import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    width: 320
    height: 480
    visible: true
    title: qsTr("Stack")

    header: ToolBar {
        ToolButton {
            text: stackView.depth > 1 ? "\u25c0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }
        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    Drawer {
        id: drawer
        width: parent.width * 0.66
        height: parent.height

        Column {
            anchors.fill: parent
            ItemDelegate {
                width: parent.width
                text: 'Profile'
                onClicked: {
                    stackView.push("Profile.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                width: parent.width
                text: 'About'
                onClicked: {
                    stackView.push(aboutpage)
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Home {}
    }

    Component {
        id: aboutpage
        About {}
    }
}
