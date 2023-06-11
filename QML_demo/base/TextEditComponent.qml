import QtQuick

FocusScope {
    width: 200
    height: 60
    Rectangle {
        anchors.fill: parent
        color: "lightsteelblue"
        border.color: "gray"
    }
    property alias text: textEdit.text
    property alias textEdit: textEdit
    TextEdit {
        id: textEdit
        anchors.fill: parent
        anchors.margins: 2
        focus: true
        wrapMode:Text.WordWrap
    }
}
