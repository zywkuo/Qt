import QtQuick

// 动画类型
// PropertyAnimation 属性值改变播放动画
// NumberAnimation qreal-type值改变播放动画
// ColorAnimation 颜色值改变播放动画
// RotationAnimation 旋转值改变播放动画
Image {
    id: image
    source: "./images/background.jpg"
    anchors.fill: parent
    property int padding: 40
    property bool running: false
    Image {
        id: qn
        width: 200
        height: 200
        source: "./images/1.jpeg"
        x: image.padding
        y: (image.height - height) / 2

        // PropertyAnimation on x {
        NumberAnimation on x {
            to: image.width - qn.width - image.padding
            duration: 3000
            running: image.running
        }

        // PropertyAnimation on rotation {
        RotationAnimation on rotation {
            to: 360
            duration: 3000
            running: image.running
        }
    }
    // PropertyAnimation on opacity {
    // NumberAnimation on opacity {
    OpacityAnimator on opacity {
        target: qn
        to: 0.1
        duration: 3000
        running: image.running
    }
    MouseArea {
        anchors.fill: parent
        onClicked: image.running = true
    }
}
