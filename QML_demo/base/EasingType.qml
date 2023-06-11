import QtQuick

Item {
    id: root
    width: 100
    height: 100
    property alias title: label.text
    property var easyType
    signal clicked
    Image {
        id: image
        anchors.fill: parent
        source: "./images/1.jpg"
        Text {
            id: label
            text: qsTr("text")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            color: '#666'
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
