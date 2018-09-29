import QtQuick 2.11

Item {
    Shortcut {
        sequence: "Ctrl+A"
        onActivated: addPopup.open()
    }
}
