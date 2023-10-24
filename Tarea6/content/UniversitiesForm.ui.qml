/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import Tarea6 1.0
import QtQuick.Layouts

Page {
    id: root
    implicitWidth: Constants.width
    implicitHeight: Constants.height

    readonly property alias button: button
    readonly property alias textField: textField

    title: "Universidades"

    ColumnLayout {
        id: columnLayout
        width: root.width * .8
        height: 100
        anchors.centerIn: parent

        TextField {
            id: textField
            font.pointSize: 13
            Layout.fillWidth: true
            placeholderText: qsTr("Ingre el nombre de un pais")
        }

        Button {
            id: button
            text: qsTr("Mostrar")
            font.pointSize: 13
            Layout.fillWidth: true
        }
    }
}
