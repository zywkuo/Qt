import QtQuick

Rectangle {
    anchors.fill: parent
    Rectangle {

        property int count: count = theModel.count

        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 20
        height: 40
        color: '#53f769'
        border.color: Qt.lighter(color, 1.1)
        Text {
            anchors.centerIn: parent
            text: qsTr("Add Item")
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                theModel.append({
                                    "num": parent.count++
                                })
                console.log("num" + parent.count)
            }
        }
    }

    ListModel {
        id: theModel
        ListElement {
            num: 0
        }
        ListElement {
            num: 1
        }
        ListElement {
            num: 2
        }
        ListElement {
            num: 3
        }
    }

    GridView {
        anchors.fill: parent
        anchors.margins: 20
        anchors.bottomMargin: 80
        clip: true
        cellHeight: 45
        cellWidth: 45
        model: theModel
        delegate: numberDelegate
    }

    Component {
        id: numberDelegate
        Rectangle {
            id: wrapper

            gradient: Gradient {
                GradientStop {
                    position: 0.0
                    color: '#f83061'
                }
                GradientStop {
                    position: 0.1
                    color: '#fb5b40'
                }
            }

            required property int index
            required property int num
            width: 40
            height: 40

            Text {
                text: wrapper.num
                anchors.centerIn: parent
                font.pixelSize: 16
            }

            GridView.onAdd: addAnimation.start()
            GridView.onRemove: removeAnimation.start()

            NumberAnimation {
                id: addAnimation
                target: wrapper
                property: "scale"
                from: 0
                to: 1
                duration: 1000
                easing.type: Easing.OutBounce
            }
            // 防止删除后没有动画效果
            SequentialAnimation {
                id: removeAnimation
                PropertyAction {
                    target: wrapper
                    property: "GridView.delayRemove"
                    value: true
                }
                NumberAnimation {
                    target: wrapper
                    property: "scale"
                    from: 1
                    to: 0
                    duration: 300
                    easing.type: Easing.InOutQuad
                }
                PropertyAction {
                    target: wrapper
                    property: "GridView.delayRemove"
                    value: false
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    theModel.remove(index)
                }
            }
        }
    }
}
