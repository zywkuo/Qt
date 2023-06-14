import QtQuick

Rectangle {
    width: 300
    height: 480

    gradient: Gradient {
        GradientStop {
            position: 0.0
            color: "#4a4a4a"
        }
        GradientStop {
            position: 1.0
            color: '#2b2b2b'
        }
    }

    ListView {
        id: listView
        anchors.fill: parent
        model: planets
        delegate: detailsDelegate
    }

    ListModel {
        id: planets
        ListElement {
            name: 'Mercury'
            imageSource: 'images/football1.png'
            facts: 'MercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercuryMercury'
        }
        ListElement {
            name: 'Venus'
            imageSource: 'images/1.jpg'
            facts: 'VenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenusVenus'
        }
        ListElement {
            name: 'Earth'
            imageSource: 'images/football1.png'
            facts: 'EarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarthEarth'
        }
        ListElement {
            name: 'Mars'
            imageSource: 'images/1.jpg'
            facts: 'MarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMarsMars'
        }
    }

    Component {
        id: detailsDelegate
        Item {
            id: wrapper

            required property string name
            required property string imageSource
            required property string facts

            width: listView.width
            height: 30

            Rectangle {
                color: '#333'
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                border.color: Qt.lighter(color, 1.2)
                height: 30
                Text {
                    anchors.left: parent.left
                    anchors.leftMargin: 6
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: parent.height - 6
                    color: "#fff"
                    text: wrapper.name
                }
            }

            Rectangle {
                id: imgBox
                width: 26
                height: 26
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.topMargin: 2
                anchors.rightMargin: 2
                color: "#000"
                Image {
                    anchors.margins: 4
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                    source: wrapper.imageSource
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    wrapper.state = 'expanded'
                }
            }

            Rectangle {
                id: closeButton
                width: 26
                height: 26
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.topMargin: 2
                anchors.rightMargin: 2
                color: "lightblue"
                border.color: Qt.lighter(color, 1.1)
                opacity: 0
                Text {
                    anchors.centerIn: parent
                    text: '\u25c0'
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        wrapper.state = ''
                    }
                }
            }

            Item {
                id: factsView
                anchors.top: imgBox.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                opacity: 0

                Rectangle {
                    anchors.fill: parent
                    gradient: Gradient {
                        GradientStop {
                            position: 0.0
                            color: '#fed958'
                        }
                        GradientStop {
                            position: 1.0
                            color: '#fecc2f'
                        }
                    }
                    border.color: '#000'
                    border.width: 2

                    Text {
                        wrapMode: Text.WrapAnywhere
                        anchors.fill: parent
                        font.pixelSize: 12
                        text: wrapper.facts

                        color: '#1f1f21'
                        anchors.margins: 5
                    }
                }
            }

            states: [
                State {
                    name: 'expanded'
                    PropertyChanges {
                        target: wrapper
                        height: listView.height
                    }
                    PropertyChanges {
                        target: imgBox
                        width: listView.width
                        height: listView.width
                        anchors.topMargin: 30
                        anchors.rightMargin: 0
                    }
                    PropertyChanges {
                        target: wrapper.ListView.view
                        contentY: wrapper
                        interactive: false
                    }
                    PropertyChanges {
                        target: closeButton
                        opacity: 1
                    }
                    PropertyChanges {
                        target: factsView
                        opacity: 1
                    }
                }
            ]

            transitions: [
                Transition {
                    NumberAnimation {
                        duration: 200
                        properties: "height,width,opacity,contentY,anchors"
                    }
                }
            ]
        }
    }
}
