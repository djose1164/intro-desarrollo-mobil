import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root

    readonly property int number: textField.text ? parseInt(textField.text) : 0

    ColumnLayout {
        width: root.width*.8
        anchors.centerIn: parent

        TextField {
            id: textField
            placeholderText: "Ingrese un numero"
            inputMethodHints: Qt.ImhDigitsOnly
            validator: IntValidator {}
            Layout.fillWidth: true
        }

        Button {
            text: "Generar tabla"
            Layout.fillWidth: true
            onClicked: popup.open()
        }
    }

    Popup {
        id: popup
        width: root.width*.8
        height: root.height*.9
        anchors.centerIn: Overlay.overlay

        ColumnLayout {
            anchors.fill: parent
            Label {
                id: title
                text: "Tabla de multiplicar del " + number
                font.bold: true
                font.pointSize: 14
                horizontalAlignment: Label.AlignHCenter
                Layout.fillWidth: true
            }

            Repeater {
                model: 14

                Label {
                    text: `${index} x ${number} = ${index*number}`
                }
            }

            Button {
                text: "Ok"
                Layout.alignment: Qt.AlignBottom
                Layout.fillWidth: true
                onClicked: popup.close()
            }
        }
    }
}
