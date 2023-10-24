import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts

ColumnLayout {
    id: root

    required property string name
    required property ListModel domains
    required property ListModel web_pages

    implicitWidth: 500
    implicitHeight: 200

    Label {
        id: nameLbl
        text: name
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        Layout.fillWidth: true
        font.pointSize: 12
    }

    Repeater {
        model: domains

        Label {
            required property string name
            text: name
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            font.pointSize: 12
        }
    }

    Repeater {
        model: web_pages

        Label {
            required property string name
            text: `<a href="${name}">${name}</a>`
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 12
            textFormat: Label.RichText
            Layout.fillWidth: true
            onLinkActivated: link => Qt.openUrlExternally(link)
        }
    }
}

