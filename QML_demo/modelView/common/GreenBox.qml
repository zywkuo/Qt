import QtQuick

Rectangle {
    color: "lightgreen"
    property alias text: label.text
    Text {
        id: label
        color: "#ffffff"
        anchors.centerIn: parent
        text: ""
    }
}
