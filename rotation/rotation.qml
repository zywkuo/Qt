import QtQuick
import QtQuick.Window

Window {
    width: 800 //background.width
    height: 600 //background.height
    visible: true
    title: qsTr("Hello World")

    // 加载图片
    Image {
        anchors.fill: parent //当前元素填充parent
        id: background // 不能修改
        source: "./images/background.jpg" //url

        Image {
            width: 100
            height: 100
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            id: pole
            source: "./images/2.png"
        }

        Image {
            width: 200
            height: 200
            anchors.centerIn: parent // 放到pareng中间
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            id: wheel
            source: "./images/1.png"

            // 为特定的属性修改行为提供动画
            Behavior on rotation {
                NumberAnimation {
                    duration: 500
                }
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: wheel.rotation += 360
        }
    }
}
