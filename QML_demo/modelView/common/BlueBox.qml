import QtQuick

Rectangle {
    color: "blue"
    property alias text: label.text
    Text {
        id: label
        color: "#ffffff"
        anchors.centerIn: parent
        text: qsTr("text")
    }
}
