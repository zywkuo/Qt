import QtQuick

Item {
    id: buttonComponentId
    property alias text: label.text
    signal clicked
    property alias color:button.color
    Rectangle {
        id:button
        x:12
        y:12
        width: 116
        height: 26
        color: "lightsteelblue"
        border.color: "slategrey"

        Text {
            id:label
            anchors.centerIn: parent
            text: "Start"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                buttonComponentId.clicked()
            }
        }
    }
}


