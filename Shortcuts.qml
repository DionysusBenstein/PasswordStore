import QtQuick 2.11

Item {
    Shortcut {
        sequence: "Enter"
        onActivated: addPopup.open()
    }
}
