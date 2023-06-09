import QtQuick
import QtQuick.Window

Rectangle {
    id: root
    width: 800
    height: 600

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
    Rectangle {
        id: rect1
        x: 12
        y: 12
        width: 76
        height: 96
        color: 'lightsteelblue'
        MouseArea {
            width: parent.width
            height: parent.height
            onClicked: rect2.visible = !rect2.visible
        }
    }

    Rectangle {
        id: rect2
        x: 112
        y: 12
        width: 76
        height: 96
        border.color: 'lightsteelblue'
        border.width: 4
        radius: 8
    }
}
