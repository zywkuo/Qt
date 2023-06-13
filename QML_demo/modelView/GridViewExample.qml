import QtQuick
import "common"

Rectangle {
    anchors.fill: parent
    visible: true

    GridView {
        id: gv
        width: parent.width
        height: parent.height
        anchors.margins: 20
        clip: true
        model: 100

        cellWidth: 45
        cellHeight: 45

        // 变向
        flow: GridView.FlowTopToBottom

        delegate: GreenBox {
            required property int index

            width: 40
            height: 40
            text: index
        }
    }
}
