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

    AddPopup { id: addPopup }

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
            }
        }
        model: listModel
    }
}
