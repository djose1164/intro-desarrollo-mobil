

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import QtWebView
import Tarea5

Page {
    id: root

    title: textItem.text

    Column {
        id: column
        width: root.width*.8
        height: root.height*.6
        anchors.centerIn: parent

        Label {
            id: textItem
            text: "Peaky Blinder | Trailer"
            horizontalAlignment: Text.AlignLeft
            font.pointSize: 16
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
            padding: 20
        }

        Item {
            id: item1
            width: root.width
            height: root.height*.66
            anchors.horizontalCenter: parent.horizontalCenter

            WebView {
                anchors.fill: parent
                url: "https://www.youtube.com/embed/oVzVdvGIC7U?autoplay=1"
                visible: !lateralMenu.visible
            }
        }
    }
}
