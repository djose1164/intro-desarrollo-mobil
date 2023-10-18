/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import QtWebView
import Tarea5 1.0
import QtQuick.Layouts

Page {
    id: root

    required property string name
    required property url video
    required property string description

    title: root.name

    implicitWidth: Constants.width
    implicitHeight: Constants.height

    ColumnLayout {
        id: columnLayout
        width: root.width*.95
        height: root.height*.8
        anchors.centerIn: parent

        Item {
            id: item1
            Layout.fillWidth: true
            Layout.preferredHeight: root.height/2

            WebView {
                anchors.fill: parent
                url: video
            }
        }

        Label {
            id: label
            text: root.description
            wrapMode: Text.Wrap
            font.pointSize: 14
            horizontalAlignment: Label.AlignJustify
            Layout.fillWidth: true
        }
    }
}
