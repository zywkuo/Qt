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
    Rectangle {
        width: 100
        height: 50
        x: 100
        y: 100
        color: 'black'
        Rectangle {
            color: 'red'
            anchors.fill: parent
            anchors.topMargin: 10
            anchors.bottomMargin: 10
            anchors.leftMargin: 0
            anchors.rightMargin: 0
        }
    }
}
