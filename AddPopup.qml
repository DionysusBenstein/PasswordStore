import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.4

Popup {
    id: popup
    x: Math.round((parent.width - width) / 2)
    y: Math.round((parent.height - height) / 2)
    width: 300; height: 300
    modal: true
    focus: true
    topPadding: 25
    leftPadding: 25
    rightPadding: 0
    bottomPadding: 0

    TextField {
        id: loginInput
        anchors {
            left: parent.left
            top: parent.top
        }

        placeholderText: "Введите логин"
    }

    TextField {
        id: passInput
        anchors {
            left: parent.left
            top: loginInput.bottom
        }

        placeholderText: "Введите пароль"
    }

    Button {
            id: doneButton
            anchors {
                right: parent.right
                bottom: parent.bottom
                bottomMargin: 2
                rightMargin: 8
            }

            text: qsTr("OK")
            Material.foreground: Material.Indigo
            flat: true
            onClicked: {
                listModel.append({"name":passInput.text})
                popup.close()
            }
        }

        Button {
            id: cancelButton
            anchors {
                right: doneButton.left
                bottom: parent.bottom
                rightMargin: 8
                bottomMargin: 2
            }

            text: qsTr("Отмена"/*"Cancel"*/)
            Material.foreground: Material.Indigo
            flat: true
            onClicked: {

            }
        }
}
