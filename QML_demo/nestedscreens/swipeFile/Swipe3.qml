import QtQuick
import QtQuick.Controls

Page {
    title: "Swipe3"

    Column {
        anchors.centerIn: parent
        spacing: 10
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: 'Swipe3 Screen'
        }

        Button {
            text: 'Go Swipe1'
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: swipeView.setCurrentIndex(0)
        }
    }
}
