

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import Tarea6 1.0

Page {
    id: root
    readonly property alias listView: listView
    title: "TechCrunch"

    implicitWidth: Constants.width
    implicitHeight: Constants.height

    Rectangle {
        id: rectangle
        height: root.height*.1
        color: "#263238"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        z: 100
        Material.elevation: 10

        Image {
            id: techcrunchlogo1
            anchors.centerIn: parent
            source: "images/techcrunch-logo-1.png"
            sourceSize: `${rectangle.height}x${rectangle.height}`
            fillMode: Image.PreserveAspectFit
        }
    }

    ListView {
        id: listView
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: rectangle.bottom
        anchors.bottom: parent.bottom
        spacing: 30
        delegate: TechCrunchDelegate {
            width: listView.width
            height: listView.height/2
        }

        BusyIndicator {
            id: busyIndicator
            visible: listView.count === 0
            anchors.centerIn: parent
        }
    }
}
