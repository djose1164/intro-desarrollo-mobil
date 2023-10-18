import QtQuick 6.5
import QtQuick.Controls 6.5
import Tarea5

Window {
    id: root

    readonly property alias appStack: stackView
    readonly property alias lateralMenu: drawer

    width: Constants.width
    height: Constants.height

    visible: true

    ToolBar {
        id: toolBar
        anchors.right: parent.right
        anchors.left: parent.left
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            icon.source: stackView.depth > 1 ? "images/arrow-left-solid.svg" : "images/bars-solid.svg"
            font:  Constants.largeFont
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            anchors.centerIn: parent
            text: stackView.currentItem.title
            font.pointSize: 14
            font.bold: true
        }
    }

    StackView {
        id: stackView
        anchors.top: toolBar.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        initialItem: Cover {}
    }

    Drawer {
        id: drawer
        width: root.width * 0.33
        height: root.height

        Column {
            anchors.fill: parent
            spacing: 40

            ItemDelegate {
                text: qsTr("Portada")
                width: parent.width
                font: Constants.font
                onClicked: {
                    stackView.push("Cover.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Personajes")
                width: parent.width
                font: Constants.font
                onClicked: {
                    stackView.push("Characters.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Momentos")
                width: parent.width
                font: Constants.font
                onClicked: {
                    stackView.push("Moments.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Acerca de")
                width: parent.width
                font: Constants.font
                onClicked: {
                    stackView.push("About.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("En mi vida")
                width: parent.width
                font: Constants.font
                onClicked: {
                    stackView.push("InMyLife.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Contratame")
                width: parent.width
                font: Constants.font
                onClicked: {
                    stackView.push("Hireme.qml")
                    drawer.close()
                }
            }
        }
    }
}

