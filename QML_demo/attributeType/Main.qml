import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {

    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // 偏移量
    // x: 0
    // y: 0

    // 最大最小宽高
    minimumWidth: 600
    minimumHeight: 400
    maximumWidth: 800
    maximumHeight: 500

    // 透明度
    // opacity: 0.5 // 0-1

    // 自定义信号
    //    signal mySig

    // 触发信号
    //    onMySig: {

    //    }

    // 系统自有信号
    //    onWidthChanged: {
    //        console.log('width', width)
    //    }
    //    Button {
    //        id: btn1
    //        width: 60
    //        height: 60
    //        focus: true
    //        background: Rectangle {
    //            color: btn1.focus ? 'blue' : 'red'
    //        }
    //        onClicked: {
    //            console.log("btn1")
    //            btn2.focus = true
    //        }
    //        Keys.onRightPressed: {
    //            console.log('onRightPressed')
    //            btn2.focus = true
    //        }
    //        objectName: "btn1"
    //    }

    //    Button {
    //        id: btn2
    //        width: 60
    //        height: 60
    //        x: 100
    //        background: Rectangle {
    //            color: btn2.focus ? 'blue' : 'red'
    //        }
    //        onClicked: {
    //            console.log("btn2")
    //            btn1.focus = true
    //        }
    //        Keys.onLeftPressed: {
    //            console.log('onLeftPressed')
    //            btn1.focus = true
    //        }
    //        objectName: "btn2"
    //    }

    //    onActiveFocusItemChanged: {
    //        console.log('onActiveFocusItemChanged', activeFocusItem.objectName)
    //    }
    //    Rectangle {
    //        width: 100
    //        height: 50
    //        x: 100
    //        y: 100
    //        color: 'black'
    //        Rectangle {
    //            color: 'red'
    //            anchors.fill: parent
    //            anchors.topMargin: 10
    //            anchors.bottomMargin: 10
    //            anchors.leftMargin: 0
    //            anchors.rightMargin: 0
    //        }
    //    }
    //    Rectangle {
    //        id: root
    //        width: 100
    //        height: 100

    //        states: [
    //            State {
    //                name: "red_color"
    //                PropertyChanges {
    //                    target: root
    //                    color: "red"
    //                }
    //            },
    //            State {
    //                name: "blue_color"
    //                PropertyChanges {
    //                    target: root
    //                    color: "blue"
    //                }
    //            }
    //        ]

    //        // state: "blue_color"

    //        MouseArea {
    //            anchors.fill: parent
    //            onPressed: {
    //                root.state = "red_color"
    //            }
    //            onReleased: {
    //                root.state = "blue_color"
    //            }
    //        }
    //    }
    //    Rectangle {
    //        id: flashingblob
    //        width: 75
    //        height: 75
    //        color: "blue"
    //        opacity: 1.0

    //        MouseArea {
    //            anchors.fill: parent
    //            onClicked: {
    //                animateColor.start()
    //                animateOpacity.start()
    //                animateWidth.start()
    //            }
    //        }
    //        PropertyAnimation {
    //            id: animateColor
    //            target: flashingblob
    //            properties: "color"
    //            to: "green"
    //            duration: 1000
    //        }

    //        NumberAnimation {
    //            id: animateOpacity
    //            target: flashingblob
    //            properties: "opacity"
    //            from: 0.1
    //            to: 1.0
    //            loops: Animation.Infinite
    //            easing {
    //                type: Easing.OutBack
    //                overshoot: 500
    //            }
    //            duration: 2000
    //        }
    //        NumberAnimation {
    //            id: animateWidth
    //            target: flashingblob
    //            properties: "width"
    //            to: 200
    //            duration: 3000
    //        }
    //        PropertyAnimation on x {
    //            to: 100
    //        }
    //        PropertyAnimation on y {
    //            to: 100
    //        }
    //        Rectangle {
    //            id: banner
    //            width: 150
    //            height: 100
    //            border.color: "black"

    //            Column {
    //                anchors.centerIn: parent
    //                Text {
    //                    id: code
    //                    text: "Code less."
    //                    opacity: 0.01
    //                }
    //                Text {
    //                    id: create
    //                    text: "Create more."
    //                    opacity: 0.01
    //                }
    //                Text {
    //                    id: deploy
    //                    text: "Deploy everywhere."
    //                    opacity: 0.01
    //                }
    //            }

    //            MouseArea {
    //                anchors.fill: parent
    //                onPressed: playbanner.start()
    //            }

    //            SequentialAnimation {
    //                id: playbanner
    //                running: false
    //                NumberAnimation {
    //                    target: code
    //                    property: "opacity"
    //                    to: 1.0
    //                    duration: 200
    //                }
    //                NumberAnimation {
    //                    target: create
    //                    property: "opacity"
    //                    to: 1.0
    //                    duration: 200
    //                }
    //                NumberAnimation {
    //                    target: deploy
    //                    property: "opacity"
    //                    to: 1.0
    //                    duration: 200
    //                }
    //            }
    //        }
    //    }

    //    Component.onCompleted: {
    //        console.log(width, height, color)
    //    }
    //    Component {
    //        id: com
    //        Rectangle {
    //            width: 200
    //            height: 200
    //            color: 'black'
    //        }
    //    }

    //    Loader {
    //        sourceComponent: com
    //        onStatusChanged: {
    //            console.log('status', status)
    //        }
    //    }
    //    MouseArea {
    //        width: 200
    //        height: 200
    //        acceptedButtons: Qt.LeftButton | Qt.RightButton
    //        Rectangle {
    //            anchors.fill: parent
    //            color: '#000'
    //        }
    //        onClicked: {
    //            console.log('鼠标点击了')
    //        }
    //        onPressed: {
    //            console.log('鼠标按下了')
    //            var retL = pressedButtons & Qt.LeftButton
    //            var retR = pressedButtons & Qt.RightButton
    //            console.log(retL == 1 ? 'left' : 'noLeft')
    //            console.log(retR == 1 ? 'right' : 'noRight')
    //        }
    //        onReleased: {
    //            console.log("鼠标抬起了")
    //        }
    //    }
    //    Rectangle {
    //        id: container
    //        width: 600
    //        height: 200

    //        Rectangle {
    //            id: rect
    //            width: 50
    //            height: 50
    //            color: "red"
    //            opacity: (600.0 - rect.x) / 600

    //            MouseArea {
    //                anchors.fill: parent
    //                drag.target: rect
    //                drag.axis: Drag.XAndYAxis
    //                drag.minimumX: 0
    //                drag.maximumX: container.width - rect.width
    //                drag.minimumY: 0
    //                drag.maximumY: container.height
    //            }
    //        }
    //    }
    Rectangle {
        width: 480
        height: 320
        Rectangle {
            x: 30
            y: 30
            width: 300
            height: 240
            color: "lightsteelblue"

            MouseArea {
                anchors.fill: parent
                drag.target: parent
                drag.axis: "XAxis"
                drag.minimumX: 30
                drag.maximumX: 150
                drag.filterChildren: true
                cursorShape: Qt.PointingHandCursor
                Rectangle {
                    color: "yellow"
                    x: 50
                    y: 50
                    width: 100
                    height: 100
                    MouseArea {
                        anchors.fill: parent
                        onClicked: console.log("Clicked")
                    }
                }
            }
        }
    }
}
