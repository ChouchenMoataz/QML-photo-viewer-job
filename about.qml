import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.3
import QtQuick 2.0
import QtQuick 2.7

ApplicationWindow
{
    id:about_window
    width: 389
    height: 200
    visible: true
    TabView
    {
        id:content
        anchors.fill:parent
        Rectangle
        {
            color: "lightgrey"
            //color: Parent.color
            anchors.fill:parent
            Image
            {
                anchors.top:parent.top
                anchors.left:parent.left
                anchors.leftMargin: 10
                anchors.topMargin: 10
                width: 100
                height: 100
                id:icon
                source: "d:/new_qt/Tools/QtCreator/bin/build-final_ui-Desktop_Qt_5_10_1_MinGW_32bit-Release/release/icon.png"
            }
            Text {
                id:title
                text: "photo viewer"
                font.family: "Helvetica"
                font.pointSize: 12
                color: "black"
                anchors.left:parent.right
                //anchors.leftMargin: content.width/2 - icon.width - 40

            }
            Text {
                id:content1
                text: "Created With Qt 5.10"
                font.family: "Helvetica"
                font.pointSize: 10
                color: "black"
                anchors.left:parent.right
                //anchors.leftMargin: content.width/2 - icon.width - 80
                anchors.top:title.bottom
                anchors.topMargin: 10
            }
            Text {
                id:content2
                text: "Version 1.0"
                font.family: "Helvetica"
                font.pointSize: 10
                color: "black"
                anchors.left:parent.right
               // anchors.leftMargin: content.width/2 - icon.width - 80
                anchors.top:content1.bottom
            }
            Text {
                id:content3
                text: "Created By : Vasyl Diakonov"
                font.family: "Helvetica"
                font.pointSize: 10
                color: "black"
                anchors.left:parent.right
                //anchors.leftMargin: content.width/2 - icon.width - 80
                anchors.top:content2.bottom
            }
            Text {
                id:content4
                text: "Website : www.google.com" // put your website here
                font.family: "Helvetica"
                font.pointSize: 10
                color: "black"
                anchors.left:parent.right
                //anchors.leftMargin: content.width/2 - icon.width - 80
                anchors.top:content3.bottom
            }
            Rectangle
            {
                anchors.bottom: parent.bottom
                anchors.right : parent.right
                anchors.bottomMargin: 10
                anchors.rightMargin: 10
                color:"grey"
                width: okbutton.width
                height: okbutton.height
                border.width: 2
                border.color: "black"
                Button {
                    anchors.fill:parent.fill
                    id:okbutton
                    text: "Ok"
                    onClicked: about_window.close()
                }
            }


        }
    }


}
