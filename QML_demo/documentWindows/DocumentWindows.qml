import QtQuick
import QtQuick.Controls
import Qt.labs.platform as NativeDialogs

ApplicationWindow {
    id: root
    width: 640
    height: 480
    menuBar: MenuBar {
        Menu {
            title: "&File"
            MenuItem {
                text: "&New"
                icon.source: "images/1.jpg"
                onTriggered: root.newDocument()
            }
            MenuItem {
                text: "&Open"
                icon.source: "images/1.jpg"
                onTriggered: root.openDocument()
            }
            MenuItem {
                text: "&Save"
                icon.source: "images/1.jpg"
                onTriggered: root.saveDocument()
            }
            MenuItem {
                text: "Save &As"
                icon.source: "images/1.jpg"
                onTriggered: root.saveAsDocument()
            }
        }
    }

    function createNewDocument() {
        var component = Qt.createComponent("DocumentWindows.qml")
        var window = component.createObject(/*root*/ )
        return window
    }

    function newDocument() {
        var window = createNewDocument()
        window.show()
    }

    function openDocument() {
        openDialog.open()
    }

    property string fileName
    property bool isDirty: true
    property bool tringToClose: false

    NativeDialogs.FileDialog {
        id: openDialog
        title: 'Save Open'
        onAccepted: {
            var window = root.createNewDocument()
            window.fileName = openDialog.file
            window.show()
        }
    }

    function saveAsDocument() {
        saveAsDialog.open()
    }

    function saveDocument() {
        if (fileName.length == 0) {
            root.saveAsDocument()
        } else {
            root.isDirty = false
            if (root.tringToClose) {
                root.close()
            }
        }
    }

    NativeDialogs.FileDialog {
        id: saveAsDialog
        title: 'Save As'
        onAccepted: {
            root.fileName = saveAsDialog.file
            saveDocument()
        }
        onRejected: {
            root.tryingToClose = false
        }
    }

    onClosing: {
        if (root.isDirty) {
            closeWarningDialog.open()
            close.accepted = false
            console.log("点击关闭了")
        }
    }

    NativeDialogs.MessageDialog {
        id: closeWarningDialog
        title: 'Closing documnet'
        text: '修改后未保存，是否需要保存?'
        buttons: NativeDialogs.MessageDialog.Yes | NativeDialogs.MessageDialog.No
                 | NativeDialogs.MessageDialog.Cancel

        onYesClicked: {
            console.log("保存后退出")
            root.tringToClose = true
            root.saveDocument()
        }
        onNoClicked: {
            console.log("不保存直接退出")
            root.isDirty = false
            root.close()
        }
        onRejected: {
            console.log("取消操作")
        }
    }

    title: (fileName.length == 0 ? "Document" : fileName) + (isDirty ? "*" : '')
}
