import QtQuick 6.5
import QtQuick.Controls 6.5
import Tarea6

Window {
    id: root

    readonly property alias appStack: stackView

    width: Constants.width
    height: Constants.height

    visible: true

    ToolBar {
        id: toolBar
        anchors.right: parent.right
        anchors.left: parent.left
        contentHeight: label.implicitHeight
        z: 100

        ToolButton {
            id: toolButton
            icon.source: stackView.depth > 1 ? "images/arrow-left-solid.svg" : "images/bars-solid.svg"
            icon.width: 42
            icon.height: 42
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            id: label
            text: stackView.currentItem.title
            font.bold: true
            font.pointSize: 14
            anchors.centerIn: parent
        }
    }

    StackView {
        id: stackView
        anchors.top: toolBar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        initialItem: Home {}
    }

    Drawer {
        id: drawer
        width: root.width * 0.33
        height: root.height

        Column {
            anchors.fill: parent
            spacing: 60

            Repeater {
                model: MenuData {}
                ItemDelegate {
                    required property string title
                    required property string componentUri

                    text: qsTr(title)
                    font.pointSize: 13
                    width: parent.width
                    onClicked: {
                        stackView.push(componentUri)
                        drawer.close()
                    }
                }
            }
        }
    }
}

