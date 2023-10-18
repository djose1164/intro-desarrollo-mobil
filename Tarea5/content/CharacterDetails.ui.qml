/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import Tarea5 1.0
import QtQuick.Layouts

Page {
    id: root

    title: "Personaje"

    required property string name
    required property string description
    required property url imageUrl

    GridLayout {
        id: gridLayout
        width: root.width*.9
        height: root.height/2
        rowSpacing: 15
        columnSpacing: 10
        rows: 2
        columns: 2
        anchors.centerIn: parent


        Image {
            id: image
            width: 100
            height: 100
            source: root.imageUrl
            sourceSize.height: gridLayout.width/2
            sourceSize.width: gridLayout.width/2
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            asynchronous: true
            fillMode: Image.PreserveAspectFit

            BusyIndicator {
                id: busyIndicator
                anchors.centerIn: parent
                visible: image.status === Image.Loading
            }
        }

        Label {
            id: label2
            text: root.description
            wrapMode: Text.Wrap
            Layout.rowSpan: 2
            Layout.fillWidth: true
            font.pointSize: 12
        }

        Label {
            id: label
            text: root.name
            horizontalAlignment: Text.AlignHCenter
            font.bold: false
            Layout.fillWidth: true
            font.pointSize: 14
        }
    }
}
