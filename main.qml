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
    title: qsTr("Passowrd Store v1.0")

    FontLoader { id: robotoThinFont; source: "fonts/Roboto-Thin_0.ttf"       }
    FontLoader { id: robotoLightFont; source: "fonts/Roboto-Light.ttf"       }
    FontLoader { id: robotoMediumFont; source: "fonts/Roboto-Medium.ttf"     }
    FontLoader { id: robotoRegularFont; source: "fonts/Roboto-Regular_0.ttf" }

    AddPopup { id: addPopup }
    Shortcuts { id: shortcuts }

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
            onClicked: addPopup.open()
        }
    }

    ListModel {
        id: listModel
        ListElement {nameView: "типа сайт"; loginView: "типа логин"; passView: "типа пароль"}
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

            Text {
                id: name
                anchors {
                    left: parent.left
                    verticalCenter: parent.verticalCenter
                    leftMargin: 16
                }

                text: nameView
                font.family: robotoRegularFont.name
                font.pixelSize: 16
                renderType: Text.NativeRendering
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
            }

            Text {
                id: login
                anchors.centerIn: parent
                text: loginView
                font.family: robotoRegularFont.name
                font.pixelSize: 16
                renderType: Text.NativeRendering
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
            }

            Text {
                id: pass
                anchors {
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    rightMargin: 16
                }

                text: passView
                font.family: robotoRegularFont.name
                font.pixelSize: 16
                renderType: Text.NativeRendering
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
            }
        }
        model: listModel
    }
}
