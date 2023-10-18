import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: root

    property int number1: field1.text ? parseInt(field1.text) : 0
    property int number2: field2.text ? parseInt(field2.text) : 0
    property int number3: field3.text ? parseInt(field3.text) : 0

    component NumberField : TextField {
        placeholderText: "Ingresa un numero"
        inputMethodHints: Qt.ImhDigitsOnly
        validator: IntValidator {}
        Layout.fillWidth: true
    }

    ColumnLayout {
        width: root.width*.8
        anchors.centerIn: parent

        NumberField { id: field1 }

        NumberField { id: field2 }

        NumberField { id: field3 }

        Button {
            text: "Aceptar"
            Layout.fillWidth: true
            onClicked: popup.open()
        }
    }

    Popup {
        id: popup
        width: root.width*.8
        height: root.height/2
        anchors.centerIn: Overlay.overlay

        ColumnLayout {
            anchors.centerIn: parent

            Label { text: `El mayor de los numeros es: ${Math.max(number1, number2, number3)}` }

            Label { text: `El menor de los numeros es: ${Math.min(number1, number2, number3)}` }

            Label { text: `El promedio de los numeros es: ${(number1+number2+number3)/3}` }

            Label {
                text: number1 + " " + number2 + " " + number3
            }

            Button {
                text: "Aceptar"
                onClicked: popup.close()
            }
        }
    }

}
