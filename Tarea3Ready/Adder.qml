import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: root
    readonly property int total: num1.text && num2.text ?
                                     parseInt(num1.text) + parseInt(num2.text)
                                   : 0

    GridLayout {
        width: root.width*.8
        columns: 2
        columnSpacing: 20
        anchors.centerIn: parent

        TextField {
            id: num1
            placeholderText: "Ingresa un numero"
            Layout.fillWidth: true
            inputMethodHints: Qt.ImhDigitsOnly
        }

        TextField {
            id: num2
            placeholderText: "Ingresa un numero"
            Layout.fillWidth: true
            inputMethodHints: Qt.ImhDigitsOnly
        }

        Label {
            id: result
            horizontalAlignment: Label.AlignHCenter
            text: total
            font.pointSize: 15
            Layout.topMargin: 10
            Layout.fillWidth: true
            Layout.columnSpan: 2
        }
    }
}
