

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

Item {
    id: root

    required property var title
    required property var content
    required property url shortlink
    property alias newLinkLbl: newLinkLbl

    implicitWidth: Constants.width
    implicitHeight: Constants.height

    Pane {
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        Material.elevation: 10

        ColumnLayout {
            id: columnLayout
            anchors.fill: parent

            Label {
                id: label
                text: title.rendered
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                Layout.fillWidth: true
                font.pointSize: 12
                font.bold: true
            }

            Label {
                id: label1
                Layout.maximumHeight: root.height * .55
                text: content.rendered
                wrapMode: Text.Wrap
                Layout.fillWidth: true
                font.pointSize: 12
                elide: Label.ElideRight
            }

            Label {
                id: newLinkLbl
                text: `[Visitar](${shortlink})`
                textFormat: Text.MarkdownText
                font.bold: true
                font.pointSize: 11
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: true
            }
        }
    }
}
