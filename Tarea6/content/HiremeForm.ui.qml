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

Page {
    id: root
    property alias githubLabel: githubLabel
    property alias linkedinLabel: linkedinLabel
    title: "Contratame"
    implicitWidth: Constants.width
    implicitHeight: Constants.height

    Image {
        id: perfil
        x: 40
        anchors.top: parent.top
        source: "images/perfil.jpg"
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        sourceSize.height: root.height/3
        sourceSize.width: root.width*.8
    }

    GridLayout {
        id: gridLayout
        width: root.width*.75
        anchors.top: perfil.bottom
        anchors.bottom: parent.bottom
        anchors.topMargin: 20
        rows: 2
        rowSpacing: 5
        columnSpacing: 10
        columns: 2
        anchors.bottomMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label8
            text: qsTr("Datos de contacto")
            horizontalAlignment: Text.AlignHCenter
            Layout.columnSpan: 2
            font.bold: true
            font.pointSize: 14
            Layout.fillWidth: true
        }

        Label {
            id: label
            text: qsTr("Nombre:")
            font.bold: true
            font.pointSize: 13
        }


        Label {
            id: label1
            text: qsTr("Jose Daniel Victoriano Bello")
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.Wrap
            Layout.fillWidth: true
            font.pointSize: 13
        }


        Label {
            id: label2
            text: qsTr("Github:")
            font.bold: true
            font.pointSize: 13
        }


        Label {
            id: githubLabel
            text: "[Perfil de Github](https://github.com/djose1164/)"
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.Wrap
            Layout.fillWidth: true
            font.pointSize: 13
            textFormat: Text.MarkdownText
        }


        Label {
            id: label4
            text: qsTr("Correo electronico:")
            font.bold: true
            font.pointSize: 13
        }


        Label {
            id: label5
            text: qsTr("djose1164@gmail.com")
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.Wrap
            Layout.fillWidth: true
            font.pointSize: 13
        }

        Label {
            id: label6
            text: qsTr("Telefono:")
            font.bold: true
            font.pointSize: 13
        }

        Label {
            id: label7
            text: qsTr("849-404-7120")
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.Wrap
            Layout.fillWidth: true
            font.pointSize: 13
        }

        Label {
            id: label9
            text: qsTr("LinkedIn:")
            font.bold: true
            font.pointSize: 13
        }

        Label {
            id: linkedinLabel
            text: "[Perfil de LinkedIn](https://www.linkedin.com/in/jose-daniel-victoriano-bello-665602263/)"
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.Wrap
            Layout.fillWidth: true
            textFormat: Text.MarkdownText
            font.pointSize: 13
        }

    }
}
