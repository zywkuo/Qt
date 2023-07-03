import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

import MyObj

import Qt5Compat.GraphicalEffects

import MyModel

import QtQml.XmlListModel
import QtQuick.Particles

Window {
    id: window
    width: SCERRN_WIDTH
    height: 480
    visible: true
    title: qsTr("Hello World")
    objectName: 'window'

    // ListView contentItem 获取所有元素
    // itemAt(0).text 获取元素
    // for循环 元素id.chidren 获取所有元素
    signal qmlSig(int i, string s)

    function qmlSlot(i, s) {
        console.log("qml ", i, s)
    }

    function qmlFunc(i, s) {
        console.log("qmlFunc Success!!!")
    }

    color: "grey"

    //    动画特效
    //    Glow
    //    Emitter
    //    Attractor
    MouseArea {
        id: mouse
        anchors.fill: parent
        hoverEnabled: true
    }

    Text {
        id: butterfly
        text: qsTr("Waitting")
        color: 'black'
        font.pixelSize: 66
        anchors.centerIn: parent
    }
    Glow {
        id: glow
        anchors.fill: butterfly
        radius: 10
        color: "white"
        source: butterfly
        SequentialAnimation {
            running: true
            loops: Animation.Infinite
            NumberAnimation {
                target: glow
                property: "spread"
                to: 0
                duration: 1000
            }
            NumberAnimation {
                target: glow
                property: "spread"
                to: 0.5
                duration: 1000
            }
        }
    }
    ParticleSystem {
        id: particleSystem
    }

    Emitter {
        // 发射器
        id: emitter
        anchors.centerIn: parent
        width: 300
        height: 300
        system: particleSystem
        emitRate: 10
        lifeSpan: 600
        lifeSpanVariation: 800
        size: 30
        velocity: PointDirection {
            x: -45
            // 偏移
            //            xVariation: 0
            //            yVariation: 100 / 6
        }
    }

    ImageParticle {
        id: img
        source: "icon.png"
        system: particleSystem
        color: Qt.rgba(153 / 255, 217 / 255, 234 / 255, 1.0)
        colorVariation: 0.3 // 根据color按照比例随机修改
    }

    Attractor {
        anchors.fill: parent
        enabled: true
        system: particleSystem
        pointX: mouse.mouseX
        pointY: mouse.mouseY
        strength: -100000000
        affectedParameter: Attractor.Acceleration
        proportionalToDistance: Attractor.InverseQuadratic
    }

    BusyIndicator {
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
    }

    //    XmlListModel {
    //        id: xmlModel
    //        source: "file.xml"
    //        query: "/rss/channel/item"

    //        XmlListModelRole {
    //            name: "title"
    //            elementName: "title"
    //        }
    //        XmlListModelRole {
    //            name: "pubDate"
    //            elementName: "pubDate"
    //        }
    //        XmlListModelRole {
    //            name: "link"
    //            elementName: "link"
    //        }
    //    }

    //    ListView {
    //        width: 0.5 * parent.width
    //        height: 300
    //        model: xmlModel
    //        delegate: Text {
    //            width: parent.width
    //            wrapMode: Text.WordWrap
    //            text: title + ": " + pubDate + "; link: " + link
    //        }
    //    }

    //    ListView {
    //        width: 300
    //        height: 300
    //        //        model: ListModel {
    //        //            ListElement {
    //        //                name: 'name'
    //        //                value: '1'
    //        //            }
    //        //        }
    //        model: MyListModel
    //        delegate: Text {
    //            id: txt
    //            text: name + value
    //        }
    //    }

    //    property int time: 0
    //    Timer {
    //        id: timer
    //        interval: 1000
    //        // running: true
    //        repeat: true
    //        triggeredOnStart: true
    //        onTriggered: {
    //            time += 1
    //        }
    //    }

    //    Text {
    //        id: txt
    //        text: time
    //        font.pixelSize: 66
    //        anchors.centerIn: parent
    //    }

    //    Button {
    //        id: startBtn
    //        text: 'start'
    //        onClicked: {
    //            timer.start()
    //        }
    //    }

    //    Button {
    //        id: startBtn1
    //        x: 200
    //        text: 'stop'
    //        onClicked: {
    //            timer.stop()
    //        }
    //    }

    //    Rectangle {
    //        id: rect
    //        width: 19
    //        height: 204
    //        x: 300
    //        y: 100
    //        border.width: 2
    //        border.color: 'black'
    //        radius: 6

    //        Grid {
    //            id: grid
    //            width: parent.width - 4
    //            height: parent.height - 4
    //            //anchors.margins: 2
    //            columns: 3
    //            anchors.centerIn: parent
    //            Repeater {
    //                model: grid.width / 5 * grid.height / 5
    //                Rectangle {
    //                    width: 5
    //                    height: 5
    //                    color: index % 2 ? 'black' : '#fff'
    //                }
    //            }
    //        }
    //    }

    //    Button {
    //        onClicked: {
    //            rect.height -= 10
    //        }
    //    }

    //    Rectangle {
    //        id: maskRect
    //        x: 200
    //        y: 100
    //        width: grid.width
    //        height: grid.height
    //        visible: false
    //        radius: 10
    //        border.color: 'red'
    //    }
    //    Rectangle {
    //        width: grid.width + 4
    //        height: grid.height + 4
    //        border.color: 'black'
    //        radius: 10
    //        border.width: 3
    //        OpacityMask {
    //            source: grid
    //            maskSource: maskRect
    //            anchors.fill: maskRect
    //            anchors.margins: 2
    //        }
    //    }

    //    Column {
    //        id: col
    //        spacing: 10
    //        Repeater {
    //            id: rep
    //            model: ListModel {}

    //            Button {
    //                width: 100
    //                height: 50
    //                text: name
    //            }
    //        }

    //        move: Transition {
    //            NumberAnimation {
    //                properties: "x,y"
    //                duration: 1000
    //            }
    //        }
    //        add: Transition {
    //            NumberAnimation {
    //                properties: "x,y"
    //                duration: 1000
    //            }
    //        }

    //        populate: Transition {
    //            NumberAnimation {
    //                properties: "x,y"
    //                from: 200
    //                duration: 200
    //                easing.type: Easing.InOutQuad
    //            }
    //        }
    //    }

    //    Button {
    //        anchors.bottom: parent.bottom
    //        anchors.left: parent.left
    //        anchors.bottomMargin: 20

    //        onClicked: {
    //            rep.model.insert(0, {
    //                                 "name": rep.model.count
    //                             })
    //        }
    //    }

    //    MyObject {
    //        id: myobjid
    //        iValue: 10
    //        sString: '张三'
    //        Component.onCompleted: {
    //            console.log(iValue, sString)
    //        }
    //    }
    //    Button {
    //        objectName: 'mybutton'
    //        onClicked: {
    //            // qmlSig(10, 'haha')
    //            // myobjid.func()
    //            // myobjid.cppSig(99, 'xixi')
    //            // myobjid.func()
    //            MyObject.func()
    //        }
    //    }

    //    Connections {
    //        target: MyObject
    //        function onCppSig(i, s) {
    //            qmlSlot(i, s)
    //        }
    //    }

    //    Connections {
    //        target: window
    //        function onQmlSig(i, s) {
    //            myobjid.cppSlot(i, s)
    //        }
    //    }
    //    Component.onCompleted: {
    //        qmlSig.connect(myobjid.cppSlot)
    //    }

    // 偏移量
    // x: 0
    // y: 0

    // 最大最小宽高
    //    minimumWidth: 600
    //    minimumHeight: 400
    //    maximumWidth: 800
    //    maximumHeight: 500

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
    //    TabBar {
    //        id: bar
    //        width: parent.width
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

    //    StackLayout {
    //        width: parent.width
    //        currentIndex: bar.currentIndex
    //        Item {
    //            id: homeTab
    //            Text {
    //                text: qsTr("tab1")
    //            }
    //        }
    //        Item {
    //            id: discoverTab
    //            Text {
    //                text: qsTr("tab2")
    //            }
    //        }
    //        Item {
    //            id: activityTab
    //            Text {
    //                text: qsTr("tab3")
    //            }
    //        }
    //    }

    //    Column {
    //        Text {
    //            font.pointSize: 24
    //            text: "<b>Hello</b> <i>World!</i>"
    //            wrapMode: Text.WordWrap // 换行
    //        }
    //        Text {
    //            font.pointSize: 24
    //            textFormat: Text.RichText // 富文本
    //            text: "<b>Hello</b> <i>World!</i>"
    //        }
    //        Text {
    //            font.pointSize: 24
    //            textFormat: Text.PlainText // 纯文本
    //            text: "<b>Hello</b> <i>World!</i>"
    //        }
    //        Text {
    //            font.pointSize: 24
    //            textFormat: Text.MarkdownText
    //            text: "**Hello** *World!*"
    //        }
    //    }
    //    Button {
    //        width: 50
    //        height: 50

    //        onClicked: {
    //            console.log(popup.visible)
    //            popup.open()
    //        }
    //        text: '打开popup'
    //    }
    //    Button {
    //        width: 50
    //        height: 50
    //        x: 60
    //        onClicked: {
    //            console.log(popup.visible)
    //            popup.close()
    //        }
    //        text: '关闭popup'
    //    }

    //    Popup {
    //        id: popup
    //        width: 500
    //        height: 300
    //        x: 100
    //        y: 100
    //        visible: true
    //        closePolicy: Popup.NoAutoClose
    //        // modal: true
    //        dim: true
    //        enter: Transition {
    //            NumberAnimation {
    //                property: "opacity"
    //                from: 0.0
    //                to: 1.0
    //                duration: 200
    //            }
    //        }
    //        exit: Transition {
    //            NumberAnimation {
    //                property: "opacity"
    //                from: 1.0
    //                to: 0.0
    //                duration: 200
    //            }
    //        }

    //        contentItem: Rectangle {
    //            anchors.fill: parent
    //            color: '#fff'
    //            Text {
    //                anchors.fill: parent
    //                text: qsTr("Popup Text  Text  Text  Text  Text  Text  Text  Text  Text")
    //                font.pixelSize: 20
    //                // anchors.horizontalCenter: parent.horizontalCenter
    //                wrapMode: Text.WordWrap
    //            }

    //            Button{
    //                anchors.bottom: parent.bottom
    //                anchors.right: parent.right
    //                anchors.rightMargin: 20
    //                anchors.bottomMargin: 20
    //                text: 'cancel'
    //                onClicked: {
    //                    popup.close()
    //                }
    //            }

    //            Button{
    //                anchors.bottom: parent.bottom
    //                anchors.right: parent.right
    //                anchors.rightMargin: 200
    //                anchors.bottomMargin: 20
    //                text: 'ok'
    //                onClicked: {
    //                    popup.close()
    //                }
    //            }
    //        }
    //    }
    //    ListView {
    //        id: lv
    //        width: 180
    //        height: 200
    //        header: Rectangle {
    //            width: parent.width
    //            height: 20
    //            color: 'gray'
    //        }
    //        footer: Rectangle {
    //            width: parent.width
    //            height: 20
    //            color: 'gray'
    //        }

    //        // model: ['111', '222', '333']
    //        highlight: Rectangle {
    //            color: 'yellow'
    //        }

    //        model: ListModel {
    //            ListElement {
    //                name: 'name1'
    //                number: 'num1'
    //            }
    //            ListElement {
    //                name: 'name2'
    //                number: 'num2'
    //            }
    //            ListElement {
    //                name: 'name3'
    //                number: 'num3'
    //            }
    //        }
    //        spacing: 10
    //        delegate: Rectangle {
    //            width: parent.width
    //            height: 30
    //            color: 'transparent'
    //            Text {
    //                // id: name
    //                text: `${name} ${number}`
    //            }
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    console.log(index)
    //                    console.log(lv.currentIndex)
    //                    lv.currentIndex = index
    //                }
    //            }
    //        }

    //        section.property: "name"
    //        section.criteria: ViewSection.FullString
    //        section.delegate: sectionHeading

    //        // The delegate for each section header
    //        Component {
    //            id: sectionHeading
    //            Rectangle {
    //                width: lv.width
    //                height: childrenRect.height
    //                color: "lightsteelblue"

    //                required property string section

    //                Text {
    //                    text: parent.section
    //                    font.bold: true
    //                    font.pixelSize: 20
    //                }
    //            }
    //        }
    //    }
    //    ComboBox {
    //        // editable: true
    //        //        model: 3
    //        // model: ['aaa', 'bbb', 'ccc']
    //        textRole: 'key'
    //        valueRole: 'value'
    //        displayText: currentText + "+" + currentValue
    //        model: ListModel {
    //            id: model
    //            ListElement {
    //                key: "First"
    //                value: 123
    //            }
    //            ListElement {
    //                key: "Second"
    //                value: 456
    //            }
    //            ListElement {
    //                key: "Third"
    //                value: 789
    //            }
    //        }
    //        onAccepted: {
    //            if (find(editText) === -1)
    //                model.append({
    //                                 "text": editText
    //                             })
    //        }
    //        onCurrentTextChanged: {
    //            console.log('text:', currentText)
    //        }
    //        onCurrentValueChanged: {
    //            console.log('value', currentValue)
    //        }
    //        //        validator: IntValidator {
    //        //            top: 20
    //        //            bottom: 0
    //        //        }
    //        validator: RegularExpressionValidator {
    //            regularExpression: /[0-9A-F]+/
    //        }
    //        onAcceptableInputChanged: {
    //            // 当前有没有匹配validator 验证器 验证成功，返回true
    //            console.log(acceptableInput)
    //        }
    //    }
    //    ComboBox {
    //        id: control
    //        model: ["First", "Second", "Third"]
    //        delegate: ItemDelegate {
    //            width: control.width
    //            contentItem: Text {
    //                text: modelData
    //                color: "#21be2b"
    //                font: control.font
    //                elide: Text.ElideRight
    //                verticalAlignment: Text.AlignVCenter
    //            }
    //            highlighted: control.highlightedIndex === index
    //        }

    //        indicator: Canvas {
    //            id: canvas
    //            x: control.width - width - control.rightPadding
    //            y: control.topPadding + (control.availableHeight - height) / 2
    //            width: 12
    //            height: 8
    //            contextType: "2d"

    //            Connections {
    //                target: control
    //                function onPressedChanged() {
    //                    canvas.requestPaint()
    //                }
    //            }

    //            onPaint: {
    //                context.reset()
    //                context.moveTo(0, 0)
    //                context.lineTo(width, 0)
    //                context.lineTo(width / 2, height)
    //                context.closePath()
    //                context.fillStyle = control.pressed ? "#17a81a" : "#21be2b"
    //                context.fill()
    //            }
    //        }

    //        contentItem: Text {
    //            leftPadding: 0
    //            rightPadding: control.indicator.width + control.spacing

    //            text: control.displayText
    //            font: control.font
    //            color: control.pressed ? "#17a81a" : "#21be2b"
    //            verticalAlignment: Text.AlignVCenter
    //            elide: Text.ElideRight
    //        }

    //        background: Rectangle {
    //            implicitWidth: 120
    //            implicitHeight: 40
    //            border.color: control.pressed ? "#17a81a" : "#21be2b"
    //            border.width: control.visualFocus ? 2 : 1
    //            radius: 2
    //        }

    //        popup: Popup {
    //            y: control.height - 1
    //            width: control.width
    //            implicitHeight: contentItem.implicitHeight
    //            padding: 1

    //            contentItem: ListView {
    //                clip: true
    //                implicitHeight: contentHeight
    //                model: control.popup.visible ? control.delegateModel : null
    //                currentIndex: control.highlightedIndex

    //                // ScrollIndicator.vertical: ScrollIndicator {}
    //                //                ScrollBar.vertical: ScrollBar {
    //                //                    policy: ScrollBar.AlwaysOn
    //                //                }

    //                // 禁止拖拽滚动
    //                interactive: false

    //                // 禁止顶部底部回弹效果
    //                boundsBehavior: Flickable.StopAtBounds
    //            }

    //            background: Rectangle {
    //                border.color: "#21be2b"
    //                radius: 2
    //            }
    //        }
    //    }

    // focus 的使用
    //    Button {
    //        id: btn
    //        width: 100
    //        height: 50
    //        focus: true
    //        // focusPolicy: Qt.NoFocus
    //        background: Rectangle {
    //            anchors.fill: parent
    //            border.color: btn.focus ? "blue" : 'black'
    //        }
    //        onFocusChanged: {
    //            console.log("focus", focus)
    //        }
    //        Component.onCompleted: {
    //            console.log('focusPolicy', focusPolicy)
    //            console.log('Qt.StrongFocus', Qt.StrongFocus)
    //        }
    //        onFocusReasonChanged: {
    //            console.log('focusReason', focusReason)
    //        }
    //    }
    //    Rectangle {
    //        id: rect1
    //        width: 300
    //        height: 200
    //        Text {
    //            id: text1
    //            focus: true
    //            text: qsTr(`rect1 focus ${text1.focus} activeFocus ${text1.activeFocus}`)
    //        }
    //    }

    //    Rectangle {
    //        id: rect2
    //        width: 300
    //        height: 200
    //        y: 250
    //        Text {
    //            id: text2
    //            focus: true
    //            text: qsTr(`rect2 focus ${text2.focus} activeFocus ${text2.activeFocus}`)
    //            Component.onCompleted: {

    //            }
    //        }
    //    }

    //    自定义信号
    //    signal testSig(string s, int value)

    //    Button {
    //        width: 100
    //        height: 100
    //        onClicked: {
    //            testSig('zhangsan', '99')
    //        }
    //    }

    //    Connections {
    //        target: window
    //        //        onTestSig: {
    //        //            console.log(s, value)
    //        //        }
    //        function onTestSig(s, value) {
    //            console.log(s, value)
    //        }
    //    }

    // 私有化数据
    //    QtObject {

    //    }
}
