import QtQuick

Item {
    id: root
    width: childrenRect.width
    height: childrenRect.height
    property alias source: image.source
    property alias text: label.text
    signal clicked

    Column {
        id: container
        Image {
            id: image
            source: "file"
        }
        Text {
            id: label
            width: image.width
            wrapMode: Text.WordWrap
            color: "#fff"
            horizontalAlignment: Text.AlignHCenter
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
