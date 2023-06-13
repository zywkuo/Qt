import QtQuick
import QtQuick.Window

Window {
    width: 1000
    height: 900
    visible: true
    title: qsTr("Model View")
    Rectangle {
        width: parent.width
        height: 300

        RepeaterExample {}

        Text {
            text: qsTr("RepeaterExample")
        }
    }
    Rectangle {
        width: parent.width
        height: 300
        y: 300
        ListViewExample {}
        Text {
            text: qsTr("ListViewExample")
        }
    }
    Rectangle {
        width: parent.width
        height: 300
        y: 600
        GridViewExample {}
        Text {
            text: qsTr("GridViewExample")
        }
    }
}
