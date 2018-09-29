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
    padding: 0

    Text {
        id: popupTitle
        anchors {
            left: parent.left
            top: parent.top
            margins: 25
        }

        text: qsTr("Добавить")
        color: "#404040"
        font {
            pixelSize: 20
            family: robotoMediumFont.name
        }
    }


    Column {
        anchors {
            left: parent.left
            top: popupTitle.bottom
            right: parent.right
            margins: 25
        }

        TextField {
            id: sourceInput
            anchors {
                left: parent.left
                right: parent.right
            }

            placeholderText: "Введите название ресурса"
            Material.accent: Material.Indigo
        }

        TextField {
            id: loginInput
            anchors {
                left: parent.left
                right: parent.right
            }

            placeholderText: "Введите логин"
            Material.accent: Material.Indigo
        }

        TextField {
            id: passInput
            anchors {
                left: parent.left
                right: parent.right
            }

            placeholderText: "Введите пароль"
            Material.accent: Material.Indigo
        }
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
