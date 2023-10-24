/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts
import Tarea6 1.0

Page {
    id: root
    required property string country
    property alias listView: listView

    implicitWidth: Constants.width
    implicitHeight: Constants.height

    title: "Universidades de " + country

    ListView {
        id: listView
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        spacing: 20
        delegate: UniversityDelegate {
            width: listView.width
        }

        BusyIndicator {
            id: busyIndicator
            visible: listView.count === 0
            anchors.centerIn: parent
        }
    }
}
