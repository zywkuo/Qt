import QtQuick
import "common"

Rectangle {
    anchors.fill: parent
    visible: true

    gradient: Gradient {
        GradientStop {
            position: 0.0
            color: '#f6f6f6'
        }
        GradientStop {
            position: 1.0
            color: '#d7d7d7'
        }
    }

    ListView {
        id: lv
        width: parent.width / 3
        height: parent.height
        anchors.margins: 20
        clip: true
        model: 100
        spacing: 5

        // 方向-横向
        // orientation: ListView.Horizontal
        // 指定方向-反向
        // layoutDirection: "RightToLeft"
        delegate: GreenBox {
            required property int index
            width: lv.width
            height: 40
            text: index

            Component.onCompleted: {
                console.log("add" + index)
            }
            Component.onDestruction: {
                console.log("del" + index)
            }
        }

        // 缓冲区
        cacheBuffer: 80
    }

    ListView {
        id: lv2
        x: parent.width / 3 + 20
        width: parent.width / 3
        height: parent.height
        anchors.margins: 20
        clip: true
        model: 100
        spacing: 5

        delegate: numberDelegate

        //        delegate: Item {
        //            required property int index
        //            width: lv.width
        //            height: 40
        //            Text {
        //                id: label
        //                text: index
        //                anchors.centerIn: parent
        //            }
        //        }
        highlight: highlightComponent
        focus: true
    }
    Component {
        id: numberDelegate
        Rectangle {
            id: wrapper
            // 获取宽度两种方式
            // width: lv.width
            width: ListView.view.width
            height: 40
            color: ListView.isCurrentItem ? 'lightblue' : 'lightgreen'
            border.color: Qt.lighter(color, 0.8)

            required property int index

            Text {
                id: label
                text: wrapper.index
                anchors.centerIn: parent
                font.pixelSize: 18
            }
        }
    }

    Component {
        id: highlightComponent

        GreenBox {
            id: gb
            // 获取宽度两种方式
            // width: lv.width
            width: ListView.view.width
            y: lv.currentItem.y
            Behavior on y {
                SequentialAnimation {
                    PropertyAnimation {
                        target: gb
                        property: "opacity"
                        to: 0
                        duration: 200
                    }
                    NumberAnimation {
                        duration: 200
                    }
                    PropertyAnimation {
                        target: gb
                        property: "opacity"
                        to: 1
                        duration: 200
                    }
                }
            }
        }
    }
}
