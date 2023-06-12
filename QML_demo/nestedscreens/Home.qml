import QtQuick
import QtQuick.Controls

Page {
    title: "Home"
    Column {
        width: parent.width
        height: parent.height / 2
        SwipeView {
            id: swipeView
            anchors.fill: parent
            Swipe1 {}
            Swipe2 {}
            Swipe3 {}
        }
    }

    PageIndicator {
        y: parent.height / 2 - height
        anchors.horizontalCenter: parent.horizontalCenter
        currentIndex: swipeView.currentIndex
        count: swipeView.count
    }

    Label {
        y: parent.height / 2 + 20
        anchors.horizontalCenter: parent.horizontalCenter
        text: 'Home Screen'
    }
}
