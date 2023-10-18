import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: root

    property int number: textField.text ? parseInt(textField.text) : 0

    ColumnLayout {
        width: root.width*.8
        anchors.centerIn: parent

        TextField {
            id: textField
            placeholderText: "Ingrese un numero"
            Layout.fillWidth: true
        }

        Button {
            text: "Generar"
            onClicked: popup.open()
            Layout.fillWidth: true
        }
    }

    Popup {
        id: popup
        width: root.width*.8
        height: root.height*.75
        anchors.centerIn: Overlay.overlay

        ColumnLayout {
            Label {
                text: "Tabla de multiplicar del " + number
                font.pointSize: 14
                font.bold: true
            }

            Repeater {
                model: 15

                Label { text: `${index} x ${number} = ${index*number}` }
            }

            Button {
                text: "Aceptar"
                onClicked: popup.close()
            }
        }
    }
}
