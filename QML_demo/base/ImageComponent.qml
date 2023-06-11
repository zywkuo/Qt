import QtQuick

Item {
    id:imageComponent
    signal clicked

    Image {
        id: image1
        source: "./images/1.png"
        width:60
        height: 60
        MouseArea {
            anchors.fill: parent
            onClicked: imageComponent.clicked()
        }
    }
}
