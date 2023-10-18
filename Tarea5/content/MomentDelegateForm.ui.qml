

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import Tarea5 1.0

ItemDelegate {
    id: root

    required property url image
    required property string name
    required property string description
    required property url video

    implicitWidth: 250
    implicitHeight: 60

    Row {
        id: row
        anchors.fill: parent
        spacing: 10

        Image {
            id: image
            width: root.width / 3
            height: root.height
            source: root.image
            fillMode: Image.PreserveAspectFit
        }

        Label {
            id: label
            height: root.height
            text: root.name
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.pointSize: 12
        }
    }
}
