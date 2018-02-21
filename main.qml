import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.3
import QtQuick 2.0


ApplicationWindow {
    id: rootwindow
    visible: true
    width:600
    height: 300
    Menu { id: contextMenu
        MenuItem {
            text: qsTr('Open')
        }
        MenuItem {
            text: qsTr('Export')
        }
    }
    header: ToolBar {

        RowLayout {
            id:items
            anchors.rightMargin: 5
            anchors.fill: parent
            ToolButton {
                id:b1
                text: qsTr("Export")
                font.pointSize: 9
                //anchors.left:b2.right
            }
            ToolButton {
                id:b2
                text: qsTr("About")
                anchors.left:b1.right
                anchors.leftMargin:20
                font.pointSize: 9
                onClicked: {
                    var component = Qt.createComponent("about.qml")
                    var window    = component.createObject(rootwindow)
                    window.show()
                }

            }
            ToolButton {
                id:b3
                anchors.left:b2.right
                anchors.leftMargin:20
                text: qsTr("Exit")
                font.pointSize: 9
            }
            Rectangle {


                //Layout.fillHeight: true
                anchors.left:b3.right
                width:searchfield.width
                anchors.leftMargin: parent.width-150-width
                // anchors.verticalCenter: parent.verticalCenter
                height: searchfield.height
                radius:5

                TextField
                {
                    width: 250
                    id:searchfield
                    anchors.verticalCenter: parent.verticalCenter
                    height: items.height - 10
                    anchors.fill:anchors.parent
                    placeholderText: qsTr("Search")
                    color:"black"
                    font.pointSize: 12
                    background: Rectangle {
                        radius: 5
                    }

                }
            }
        }
    }
    TabView {
        id: myContent
        anchors.fill: parent
        SplitView {
            anchors.fill: parent
            orientation: Qt.Horizontal

            Rectangle {
                width: 200
                Layout.maximumHeight: parent.height - 20

                color: "white"
                ListView {
                    id: listView
                    //x: 0
                    //y: 40
                    width: parent.width
                    height: parent.height
                    spacing: 5
                    anchors.left: parent.Left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.top:parent.top
                    anchors.topMargin: 10
                    delegate: Item {
                        x: 15
                        width: 60
                        height: 40
                        Row {
                            id: row1
                            Rectangle {
                                width: 40
                                height: 40
                                color: colorCode
                            }

                            Text {
                                text: name
                                font.bold: true
                                anchors.verticalCenter: parent.verticalCenter
                            }
                            spacing: 15

                        }
                    }
                    model: ListModel {

                        ListElement {
                            name: "Grey"
                            colorCode: "grey"
                        }

                        ListElement {
                            name: "Red"
                            colorCode: "red"
                        }

                        ListElement {
                            name: "Blue"
                            colorCode: "blue"
                        }

                        ListElement {
                            name: "Green"
                            colorCode: "green"
                        }
                    }

                }

            }
            Rectangle {
                id: centerItem
                Layout.minimumWidth: 50
                Layout.fillWidth: true
                Layout.maximumHeight: parent.height - 20
                color: "white"
                x: parent.x + 10
                y: parent.y + 10
                GridView{
                    id: gridView
                    //y: textInput.height
                    width:  parent.width
                    height:  parent.height
                    anchors.right: parent.right
                    anchors.top:parent.top
                    anchors.left:parent.left
                    anchors.bottom:parent.bottom
                    anchors.leftMargin:20
                    anchors.topMargin:20
                    z: 0
                    scale: 1
                    clip: true
                    contentHeight: 100
                    contentWidth: 100
                    cacheBuffer: 320
                    flickableDirection: Flickable.HorizontalFlick
                    transformOrigin: Item.Center
                    antialiasing: true
                    boundsBehavior: Flickable.StopAtBounds
                    highlightRangeMode: GridView.ApplyRange
                    highlightMoveDuration: 12
                    snapMode: GridView.NoSnap
                    layoutDirection: Qt.LeftToRight
                    cellWidth: 120
                    cellHeight: 120
                    ScrollBar.vertical: ScrollBar {
                        policy: ScrollBar.AlwaysOn
                    }
                    ScrollBar.horizontal: ScrollBar {
                        policy: ScrollBar.AlwaysOn
                    }


                    delegate: Item {
                        x: 5
                        height: 50
                        Column {
                            Rectangle {
                                id:rec1
                                width:100
                                height:100
                                color: colorCode
                                border.width: 1;
                                //border:5
                                anchors.horizontalCenter: parent.horizontalCenter
                                MouseArea {
                                    hoverEnabled: true
                                    anchors.fill: parent
                                    acceptedButtons: Qt.LeftButton | Qt.RightButton
                                    onClicked: {
                                        if (mouse.button == Qt.RightButton)
                                        {
                                            contextMenu.popup()
                                        }
                                        if (mouse.button == Qt.LeftButton)
                                        {

                                            rec1.forceActiveFocus();
                                        }
                                    }

                                }
                            }

                            Text {
                                x: 5
                                text: name
                                font.bold: true
                                anchors.horizontalCenter: parent.horizontalCenter
                            }
                            spacing: 5
                        }
                    }
                    model: ListModel {
                        ListElement {
                            name: "Red"

                            colorCode: "red"
                        }

                        ListElement {
                            name: "Blue"
                            colorCode: "blue"
                        }

                        ListElement {
                            name: "Green"
                            colorCode: "green"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }

                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Red"

                            colorCode: "red"
                        }

                        ListElement {
                            name: "Blue"
                            colorCode: "blue"
                        }

                        ListElement {
                            name: "Green"
                            colorCode: "green"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }

                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Red"

                            colorCode: "red"
                        }

                        ListElement {
                            name: "Blue"
                            colorCode: "blue"
                        }

                        ListElement {
                            name: "Green"
                            colorCode: "green"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }

                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Red"

                            colorCode: "red"
                        }

                        ListElement {
                            name: "Blue"
                            colorCode: "blue"
                        }

                        ListElement {
                            name: "Green"
                            colorCode: "green"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }

                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Red"

                            colorCode: "red"
                        }

                        ListElement {
                            name: "Blue"
                            colorCode: "blue"
                        }

                        ListElement {
                            name: "Green"
                            colorCode: "green"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }

                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Red"

                            colorCode: "red"
                        }

                        ListElement {
                            name: "Blue"
                            colorCode: "blue"
                        }

                        ListElement {
                            name: "Green"
                            colorCode: "green"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }

                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }
                        ListElement {
                            name: "Grey"
                            colorCode: "black"
                        }

                    }
                }
            }
        }
    }
}
