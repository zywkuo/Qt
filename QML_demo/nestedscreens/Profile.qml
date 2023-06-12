import QtQuick
import QtQuick.Controls

Page {
    title: "Profile"

    Column {
        anchors.centerIn: parent
        spacing: 10
        Label {
             anchors.horizontalCenter: parent.horizontalCenter
            text: 'Profile Screen'
        }

        Button {
            text: 'Edit'
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: stackView.push("EditProfile.qml")
        }
    }


}
