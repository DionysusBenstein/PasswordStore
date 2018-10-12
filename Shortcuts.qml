/*******************************************************************/

/* Original File Name: Shortcuts.qml                               */

/* Date: 29-09-2018                                                */

/* Developer: Dionysus Benstein                                    */

/* Copyright © 2018 Dionysus Benstein. All rights reserved.        */

/* Description: Файл для хранения горячих клавиш.                  */

/*******************************************************************/

import QtQuick 2.11

Item {
    Shortcut {
        sequence: "Ctrl+A"
        onActivated: addPopup.open()
    }
}
