import QtQuick
import "common"

Rectangle {
    Column {
        height: 160
        spacing: 2

        //        Repeater {
        //            //            model: 10
        //            //            delegate: BlueBox {
        //            //                required property int index
        //            //                width: 160
        //            //                height: 30
        //            //                text: index
        //            //            }
        //            // 上面等价于下面
        //            model: ['Enterprise', 'Columbia', 'Challenger']
        //            BlueBox {
        //                width: 160
        //                height: 30
        //                text: modelData + index
        //            }

        //            onItemAdded: (index, item) => {
        //                             console.log("item" + item + "   index" + index)
        //                         }
        //            onItemRemoved: (index, item) => {
        //                               console.log("item" + item + "   index" + index)
        //                           }
        //        }

        Repeater {
            model: ListModel {
                ListElement {
                    name: '1'
                    surfaceColor: 'gray'
                }
                ListElement {
                    name: '2'
                    surfaceColor: 'yellow'
                }
                ListElement {
                    name: '3'
                    surfaceColor: 'lightBlue'
                }
                ListElement {
                    name: '4'
                    surfaceColor: 'orange'
                }
                ListElement {
                    name: '5'
                    surfaceColor: 'red'
                }
                ListElement {
                    name: '6'
                    surfaceColor: 'yellow'
                }
                ListElement {
                    name: '7'
                    surfaceColor: 'lightBlue'
                }
                ListElement {
                    name: '8'
                    surfaceColor: 'green'
                }
            }

            delegate: BlueBox {
                required property string name
                required property color surfaceColor
                width: 160
                height: 30
                text: name
                radius: 3

                Rectangle {
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 6
                    width: 16
                    height: 16
                    radius: width / 2
                    color: parent.surfaceColor
                }
            }
        }
    }
}
