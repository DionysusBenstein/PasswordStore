/*******************************************************************/

/* Original File Name: main.qml                                    */

/* Date: 29-09-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Основное окно программы.                           */

/*******************************************************************/

import QtQuick 2.11
import QtQuick.Controls 2.4

ApplicationWindow {
    id: window
    visible: true
    width: 400
    height: 600
    title: qsTr("Stack")

    FontLoader { id: robotoThinFont; source: "fonts/Roboto-Thin_0.ttf"       }
    FontLoader { id: robotoLightFont; source: "fonts/Roboto-Light.ttf"       }
    FontLoader { id: robotoMediumFont; source: "fonts/Roboto-Medium.ttf"     }
    FontLoader { id: robotoRegularFont; source: "fonts/Roboto-Regular_0.ttf" }

    header: ToolBar {
        id: appBar
        height: 56

        Text {
            id: headerText
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                margins: 19
            }

            text: "Password Store"
            color: "white"
            font {
                family: robotoMediumFont.name
                pointSize: 15
            }
        }

        ToolButton {
            anchors {
                right: parent.right
                top: parent.top
                bottom: parent.bottom
            }
            icon.source: "images/outline-add-24px.svg"
        }
    }

    ListModel {
        id: listModel

        ListElement { name: qsTr("wdawda") }
        ListElement { name: qsTr("wdawgaw") }
        ListElement { name: qsTr("31515") }
        ListElement { name: qsTr("123456") }
        ListElement { name: qsTr("admin") }
        ListElement { name: qsTr("09121985") }
        ListElement { name: qsTr("31516") }
        ListElement { name: qsTr("nljk;jk;j") }
        ListElement { name: qsTr("bnmbnm") }
        ListElement { name: qsTr("zxczs") }
        ListElement { name: qsTr("uipui[ui]") }
        ListElement { name: qsTr("fhghfg") }
    }

    ListView {
        id: listView
        anchors.fill: parent
        delegate: ItemDelegate {
            id: itemDelegate
            height: 56
            anchors {
                left: parent.left
                right: parent.right
            }

            TextInput {
                text: name
                anchors {
                    fill: parent
                    left: parent.right
                    leftMargin: 16
                }

                font.family: robotoRegularFont.name
                font.pixelSize: 16

                renderType: Text.NativeRendering
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                selectByMouse: true
                echoMode: TextInput.Password
            }
        }
        model: listModel
    }
}
