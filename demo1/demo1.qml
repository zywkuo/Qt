import QtQuick
import QtQuick.Window

Window {
    width: 800 //background.width
    height: 600 //background.height
    visible: true
    title: qsTr("Hello Qt Quick")

    //Rectangle {
    //    id: root
    //    width: 800
    //    height: 600
    //}

    //    color: "#565656"
    //    onHeightChanged: console.log('height:', height)

    // 1小结
    //    Image {
    //        id: image
    //        source: "./images/1.png"
    //        x: (root.width - width) / 2
    //        y: 30
    //    }

    //    Text {
    //        // un-named
    //        width: root.width
    //        text: "去哪？？？？？？"
    //        color: "#ffffff"
    //        // x: (root.width - width) / 2
    //        // 等价于
    //        horizontalAlignment: Text.AlignHCenter
    //        y: image.y + image.height
    //    }

    // 2小结
    //    Text {
    //        // (1) identifier
    //        id: thisLabel

    //        // (2) set x- and y-position
    //        x: 24
    //        y: 16

    //        // (3) bind height to 2 * width
    //        height: 2 * width
    //        Rectangle {
    //            anchors.fill: parent
    //            color: 'yellow'
    //            z: parent.z - 1
    //        }

    //        // (4) custom property
    //        property int times: 24

    //        // (5) property alias
    //        property alias anotherTimes: thisLabel.times

    //        // (6) set text appended by value
    //        text: "thisLabel " + anotherTimes

    //        // (7) font is a grouped property
    //        font.family: "Ubuntu"
    //        font.pixelSize: 24

    //        // (8) KeyNavigation is an attached property
    //        KeyNavigation.tab: thatLabel

    //        // (9) signal handler for property changes
    //        onHeightChanged: console.log('height:', height)

    //        // focus is need to receive key events
    //        focus: true

    //        // change color based on focus value
    //        color: focus ? "red" : "black"
    //    }

    //    Text {
    //        id: thatLabel
    //        text: "thatLabel " + thisLabel.times
    //        focus: !thisLabel.focus
    //        KeyNavigation.tab: thisLabel
    //        color: focus ? "red" : "black"

    //        //        调用js函数
    //        Keys.onSpacePressed: {
    //            increment()
    //        }
    //        Keys.onEscapePressed: {
    //            text = ''
    //        }

    //        function increment() {
    //            thisLabel.times += 1
    //        }
    //        //        箭头函数
    //        onTextChanged: text => console.log("text changed to:", text)

    //        //        onTextChanged: function (text) {
    //        //            console.log("text changed to:", text)
    //        //        }
    //    }

    //    元素可以分为视觉元素和非视觉元素
    //       视觉元素(如Rectangle) 具有几何形状
    //       非视觉元素(Timer) 提供一般功能，通常用于控制视觉元素
    //    ltem
    //       Item是所有视觉元素的基础元素，因此所有其他视觉元素都从item继承。它本身并不绘制任何东西，但定义了所有视觉元素的共同属性:
    //      几何属性 (Geometry)
    //          x,y 用于定义元素展开的左上角位置
    //          z 用于定义堆叠顺序
    //          width 、 height: 用于表示范围
    //      布局处理
    //          anchors:(左、右、上、下、垂直和水平中心) 相对于其他元素进行定位
    //               可选项margins

    //      键处理
    //          Key和KeyNavigation属性用于控制键处理
    //          focus属性用启用键处理。
    //      变换
    //          scale和rotate变换以及x、y、z变换的通用transform属性列表，以及transformOrigin
    //      视觉
    //          visible用于显示/隐藏元素，
    //          opacity用于控制透明度，
    //          clip用于限制对元素边界的绘制操作，
    //          smooth用于增强渲染质量。
    //      状态定义
    //          states用于动画化状态更改
    //              包含所有支持的状态列表、当前state属性和transitions列表属性

    //    3小结
    //    Rectangle {
    //        id: rect1
    //        x: 12
    //        y: 12
    //        width: 76
    //        height: 96
    //        //        color: 'lightsteelblue'
    //        color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1) // 颜色随机
    //    }

    //    Rectangle {
    //        id: rect2
    //        x: 112
    //        y: 12
    //        width: 76
    //        height: 96
    //        border.color: 'lightsteelblue'
    //        border.width: 4
    //        radius: 20
    //    }

    //    Rectangle {
    //        id: rect3
    //        x: 212
    //        y: 12
    //        width: 76
    //        height: 96
    //        gradient: Gradient {
    //            GradientStop {
    //                position: 0.0
    //                color: 'lightsteelblue'
    //            }
    //            GradientStop {
    //                position: 1.0
    //                color: 'slategray'
    //            }
    //        }

    //        border.color: 'lightsteelblue'
    //        border.width: 4
    //        radius: 20
    //    }

    //    Text {
    //        id: text1
    //        text: "文字1、文字1、文字1"
    //        color: '#303030'
    //        font.family: 'Ubuntu'
    //        font.pixelSize: 28
    //    }
    //    Text {
    //        id: test2
    //        //        width: 40
    //        //        elide: Text.ElideMiddle // 中间显示...
    //        y: text1.y + text1.height + 20
    //        text: "文字2、文字2、文字2"
    //        color: '#303030'
    //        //        wrapMode: Text.WordWrap // 强制换行
    //        style: Text.Sunken
    //        styleColor: '#232323'
    //        font.pixelSize: 28
    //    }

    //    可以使用horizontalAlignment和verticalAlignment属性对齐文本。使用style和styleColor属性,允许以轮廓、凸起和凹陷模式渲染文本。
    //    elide属性允许将省略符位置设置为文本的左侧、右侧或中间。
    //    例如: A very... long text
    //    如果不希望省略符模式的“.."出现，但仍希望看到全文，可以使用wrapMode属性包装文本(仅在显式的设置了宽度时有效) :
    //    Image {
    //        id: image1
    //        source: "./images/1.png"
    //    }

    //    Image {
    //        id: image2
    //        width: image1.width / 2
    //        source: "./images/1.png"
    //        x: image1.x + image1.width + 20
    //    }

    //    Image {
    //        id: image3
    //        width: image1.width / 2
    //        source: "./images/1.png"
    //        y: image1.height + 20
    //        fillMode: Image.PreserveAspectCrop
    //    }

    //    lmage.Stretch: 默认值。缩放图像以适合项目
    //    lmage.PreserveAspectFit:图像均匀缩放以适应而不裁剪
    //    lmage.PreserveAspectCrop: 图像均匀缩放以填充，必要时进行裁剪
    //    lmage.Tile:水平和垂直复制图像
    //    lmage.TileVertically: 图像水平拉伸并垂直平铺
    //    lmage.TileHorizontally: 图像被垂直拉伸并水平平铺
    //    lmage.Pad:图像未转换

    //    MouseArea 矩形不可见，可以捕获鼠标事件
    //    Rectangle {
    //        id: rect1
    //        x: 12
    //        y: 12
    //        width: 76
    //        height: 96
    //        color: 'lightsteelblue'
    //        MouseArea {
    //            width: parent.width
    //            height: parent.height
    //            onClicked: rect2.visible = !rect2.visible
    //        }
    //    }

    //    Rectangle {
    //        id: rect2
    //        x: 112
    //        y: 12
    //        width: 76
    //        height: 96
    //        border.color: 'lightsteelblue'
    //        border.width: 4
    //        radius: 8
    //    }

    //    Component组件
    //    ButtonComponent {
    //        text:"Go Go"
    //        color: "yellow"
    //        onClicked: {
    //            text1.text = "Go 了"
    //        }
    //    }

    //    Text {
    //        id: text1
    //        x:12
    //        y:76
    //        width: 116
    //        height: 26
    //        text: "waiting..."
    //        horizontalAlignment: Text.AlignHCenter
    //    }

    //    简单变换  平移 旋转 缩放
    //    MouseArea {
    //        anchors.fill: parent
    //        onClicked: {
    //            image1.x=20
    //            image2.rotation=0
    //            image3.rotation=0
    //            image3.scale=1
    //        }
    //    }
    //    ImageComponent{
    //        id:image1
    //        x:20
    //        y:20
    //        onClicked:{
    //            x+=10
    //        }
    //    }

    //    ImageComponent{
    //        id:image2
    //        x:120
    //        y:20
    //        onClicked:{
    //            rotation+=10
    //        }
    //    }
    //    ImageComponent{
    //        id:image3
    //        x:220
    //        y:20
    //        onClicked:{
    //            rotation+=10
    //            scale+=0.1
    //        }
    //    }

    // 定位器
    //    DarkSquare {
    //        id: dark1
    //        width: parent.width
    //        height: 300
    //        Column {
    //            id: colume
    //            anchors.centerIn: parent
    //            spacing: 10
    //            BlueSquare {}
    //            BrightSquare {
    //                width: 100
    //            }
    //            GreenSquare {}
    //            RedSquare {}
    //        }
    //    }

    //    DarkSquare {
    //        id: dark2
    //        width: parent.width
    //        height: 300
    //        Row {
    //            id: row
    //            anchors.centerIn: parent
    //            spacing: 10
    //            BlueSquare {}
    //            BrightSquare {
    //                width: 100
    //            }
    //            GreenSquare {}
    //            RedSquare {}
    //        }
    //    }

    //    DarkSquare {
    //        id: dark3
    //        width: parent.width
    //        height: 300
    //        Grid {
    //            id: grid
    //            anchors.centerIn: parent
    //            spacing: 10
    //            rows: 2
    //            columns: 3
    //            BlueSquare {}
    //            BrightSquare {}
    //            GreenSquare {}
    //            RedSquare {}
    //            BlueSquare {}
    //            BrightSquare {}
    //        }
    //    }

    //    DarkSquare {
    //        id: dark4
    //        width: parent.width
    //        height: 300
    //        Flow {
    //            id: flow
    //            anchors.fill: parent
    //            anchors.margins: 10
    //            spacing: 10
    //            BlueSquare {}
    //            BrightSquare {}
    //            GreenSquare {}
    //            RedSquare {}
    //            BlueSquare {}
    //            BrightSquare {}
    //        }
    //    }

    //    DarkSquare {
    //        id: dark5
    //        width: parent.width
    //        height: 300
    //        property variant colorArray: ["#00bde3", "#67c111", "#ea7025"]

    //        Grid {
    //            id: grid2
    //            anchors.centerIn: parent
    //            anchors.margins: 10
    //            spacing: 10
    //            Repeater {
    //                model: 16
    //                Rectangle {
    //                    id: rect1
    //                    required property int index
    //                    property int corlorIndex: Math.floor(Math.random() * 3)
    //                    color: dark5.colorArray[corlorIndex]
    //                    width: 56
    //                    height: 56
    //                    Text {
    //                        id: text
    //                        anchors.centerIn: parent
    //                        // required property int index 先定义
    //                        text: "Cell" + parent.index/*rect1.Positioner.index*/
    //                        color:"#ffffff"
    //                    }
    //                }
    //            }
    //        }
    //    }
    //    GreenSquare2 {
    //        BlueSquare2 {
    //            text: "(1)"
    //            anchors.fill: parent
    //            anchors.margins: 8
    //        }
    //    }

    //    GreenSquare2 {
    //        x: 120
    //        BlueSquare2 {
    //            text: "(2)"
    //            anchors.left: parent.left
    //            anchors.top: parent.top
    //            anchors.leftMargin: 8
    //            anchors.topMargin: 8
    //        }
    //    }

    //    GreenSquare2 {
    //        x: 240
    //        BlueSquare2 {
    //            text: "(3)"
    //            anchors.left: parent.right
    //        }
    //    }
    //    GreenSquare2 {
    //        x: 400
    //        BlueSquare2 {
    //            id: blue4_1
    //            text: "(4-1)"
    //            anchors.top: parent.top
    //            anchors.margins: 8
    //            anchors.horizontalCenter: parent.horizontalCenter
    //            height: 25
    //        }
    //        BlueSquare2 {
    //            text: "(4-2)"
    //            anchors.top: blue4_1.bottom
    //            anchors.margins: 8
    //            anchors.horizontalCenter: parent.horizontalCenter
    //            height: 25
    //            width: 75
    //        }
    //    }

    //    GreenSquare2 {
    //        x: 520
    //        BlueSquare2 {
    //            text: "(5)"
    //            anchors.centerIn: parent
    //        }
    //    }

    //    GreenSquare2 {
    //        x: 640
    //        BlueSquare2 {
    //            text: "(6)"
    //            anchors.horizontalCenter: parent.horizontalCenter
    //            anchors.verticalCenter: parent.verticalCenter
    //            anchors.horizontalCenterOffset: -20
    //        }
    //    }

    // TextInput  TextEdit
    //    Rectangle {
    //        width: 200
    //        height: 80
    //        color: "linen"
    //        TextInput {
    //            id: input1
    //            x: 8
    //            y: 8
    //            width: 96
    //            height: 20
    //            focus: true
    //            text: "Text Input 1"
    //            KeyNavigation.tab: input2
    //        }
    //        TextInput {
    //            id: input2
    //            x: 8
    //            y: 36
    //            width: 96
    //            height: 20
    //            text: "Text Input 2"
    //            KeyNavigation.tab: input1
    //        }
    //    }
    //    TextInputComponent {
    //        id: input1
    //        text: "Text Input 1"
    //        input.font.pixelSize: 18
    //        height: input.font.pixelSize + 10
    //        input.color: "#fff"
    //        focus: true
    //        KeyNavigation.tab: input2

    //    }
    //    TextInputComponent {
    //        id: input2
    //        text: "Text Input 2"
    //        input.font.pixelSize: 18
    //        y: input1.y + input1.height + 12
    //        height: input.font.pixelSize + 10
    //        input.color: "#fff"
    //        KeyNavigation.tab: input1
    //    }
    //    TextEditComponent {
    //        id: edit
    //        text: "Text Edit 1"
    //        textEdit.font.pixelSize: 18
    //        y: input2.y + input2.height + 12

    //        textEdit.color: "#fff"
    //        KeyNavigation.tab: input1
    //    }

    //    keys
    //    Rectangle {
    //        width: 500
    //        height: 300
    //        color: "#f5f5f5"
    //        Rectangle {
    //            id: square
    //            width: 100
    //            height: 100
    //            color: "green"
    //            border.color: Qt.lighter(color)
    //        }
    //        focus: true
    //        Keys.onLeftPressed: square.x -= 8
    //        Keys.onRightPressed: square.x += 8
    //        Keys.onUpPressed: square.y -= 8
    //        Keys.onDownPressed: square.y += 8
    //        Keys.onPressed: event => {
    //                            switch (event.key) {
    //                                case Qt.Key_Plus:
    //                                square.scale += 0.1
    //                                break
    //                                case Qt.Key_Minus:
    //                                square.scale -= 0.1
    //                                break
    //                            }
    //                        }
    //    }

    //    动画

    Image {
        id: image1
        source: "file"
    }














}
