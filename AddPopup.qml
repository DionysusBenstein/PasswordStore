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

    Column {
        anchors {
            left: parent.left
            top: parent.top
            right: parent.right
            margins: 25
        }

        TextField {
            id: sourceInput
            placeholderText: "Введите название ресурса"
        }

        TextField {
            id: loginInput
            placeholderText: "Введите логин"
        }

        TextField {
            id: passInput
            placeholderText: "Введите пароль"
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
