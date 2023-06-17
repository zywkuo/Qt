import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

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
    //    Rectangle {
    //        width: 480
    //        height: 320
    //        Rectangle {
    //            x: 30
    //            y: 30
    //            width: 300
    //            height: 240
    //            color: "lightsteelblue"

    //            MouseArea {
    //                anchors.fill: parent
    //                drag.target: parent
    //                drag.axis: "XAxis"
    //                drag.minimumX: 30
    //                drag.maximumX: 150
    //                drag.filterChildren: true
    //                cursorShape: Qt.PointingHandCursor
    //                Rectangle {
    //                    color: "yellow"
    //                    x: 50
    //                    y: 50
    //                    width: 100
    //                    height: 100
    //                    MouseArea {
    //                        anchors.fill: parent
    //                        onClicked: console.log("Clicked")
    //                    }
    //                }
    //            }
    //        }
    //    }

    //    Button {
    //        width: 50
    //        height: 50
    //        checkable: true
    //        autoExclusive: true
    //    }

    //    Button {
    //        width: 50
    //        height: 50
    //        x:60
    //        checkable: true
    //        autoExclusive: true
    //    }
    //    Button {
    //        id: btn
    //        width: 100
    //        height: 50
    //        x: 120
    //        checkable: true
    //        //        autoExclusive: true
    //        autoRepeat: true

    //        //        onClicked: {
    //        //            console.log('clicked')
    //        //        }
    //        //        onPressed: {
    //        //            console.log('onPressed')
    //        //        }
    //        //        onReleased: {
    //        //            console.log('onReleased')
    //        //        }
    //        //        onDownChanged: {
    //        //            console.log("down",down,"pressed",pressed)
    //        //        }
    //        icon.source: 'images/1.jpg'
    //        icon.color: "transparent"
    //        text: "按钮"
    //        //        indicator: Image {
    //        //            source: "images/1.jpg"
    //        //        }
    //        background: Rectangle {
    //            anchors.fill: parent
    //            color: {
    //                if (btn.pressed) {
    //                    return 'green'
    //                } else {
    //                    return 'blue'
    //                }
    //            }
    //            border.width: 6
    //            border.color: {
    //                if (btn.pressed) {
    //                    return 'black'
    //                } else {
    //                    return 'red'
    //                }
    //            }
    //        }
    //    }
    //    // property 类型
    //    property int num: 0
    //    property real realName: 0.0
    //    property string name: 'str'
    //    property color name: 'black'
    //    property url myUrl: 'images/1.jpg'

    //    property Component myComponent
    //    property Rectangle myRec

    //    // 啥都行
    //    property var myVar
    //    property list<Rectangle> myList
    //    // 只读，无法修改
    //    readonly property int width: 200

    //    // 必须设定
    //    required property myComponent

    //    // 别名
    //    property alise newName: name

    //    ColumnLayout {
    //        CheckBox {
    //            checked: true
    //            text: qsTr("First")
    //        }
    //        CheckBox {
    //            text: qsTr("Second")
    //        }
    //        CheckBox {
    //            checked: true
    //            text: qsTr("Third")
    //        }
    //    }

    //    Column {
    //        x:100
    //        ButtonGroup {
    //            id: childGroup
    //            exclusive: false
    //            checkState: parentBox.checkState
    //        }

    //        CheckBox {
    //            id: parentBox
    //            text: qsTr("Parent")
    //            checkState: childGroup.checkState
    //        }

    //        CheckBox {
    //            checked: true
    //            text: qsTr("Child 1")
    //            leftPadding: indicator.width
    //            ButtonGroup.group: childGroup
    //        }

    //        CheckBox {
    //            text: qsTr("Child 2")
    //            leftPadding: indicator.width
    //            ButtonGroup.group: childGroup
    //        }
    //    }

    //    DelayButton {
    //        width: 150
    //        height: 50
    //    }
    //    ColumnLayout {
    //        RadioButton {
    //            checked: true
    //            text: qsTr("First")
    //        }
    //        RadioButton {
    //            text: qsTr("Second")
    //        }
    //        RadioButton {
    //            text: qsTr("Third")
    //        }
    //    }

    //    ButtonGroup{
    //        id:btngrp
    //        // exclusive:true
    //        buttons: col.children
    //    }

    //    ColumnLayout {
    //        id:col
    //        Switch {
    //            text: qsTr("Wi-Fi")
    //            checked: true
    //        }
    //        Switch {
    //            text: qsTr("Bluetooth")
    //        }
    //    }
    //    TabBar {
    //        TabButton {
    //            text: qsTr("Home")
    //        }
    //        TabButton {
    //            text: qsTr("Discover")
    //        }
    //        TabButton {
    //            text: qsTr("Activity")
    //        }
    //    }
    TabBar {
        id: bar
        width: parent.width
        TabButton {
            text: qsTr("Home")
        }
        TabButton {
            text: qsTr("Discover")
        }
        TabButton {
            text: qsTr("Activity")
        }
    }

    StackLayout {
        width: parent.width
        currentIndex: bar.currentIndex
        Item {
            id: homeTab
            Text {
                text: qsTr("tab1")
            }
        }
        Item {
            id: discoverTab
            Text {
                text: qsTr("tab2")
            }
        }
        Item {
            id: activityTab
            Text {
                text: qsTr("tab3")
            }
        }
    }

    Column {
        Text {
            font.pointSize: 24
            text: "<b>Hello</b> <i>World!</i>"
            wrapMode: Text.WordWrap // 换行
        }
        Text {
            font.pointSize: 24
            textFormat: Text.RichText // 富文本
            text: "<b>Hello</b> <i>World!</i>"
        }
        Text {
            font.pointSize: 24
            textFormat: Text.PlainText // 纯文本
            text: "<b>Hello</b> <i>World!</i>"
        }
        Text {
            font.pointSize: 24
            textFormat: Text.MarkdownText
            text: "**Hello** *World!*"
        }
    }

}
