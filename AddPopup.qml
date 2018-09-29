import QtQuick 2.11
import QtQuick.Controls 2.4

Popup {
    id: popup
    x: Math.round((parent.width - width) / 2)
    y: Math.round((parent.height - height) / 2)
    width: 300; height: 300
    modal: true
    focus: true
}
