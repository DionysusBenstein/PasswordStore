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
    }
}
