/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.5
import QtQuick.Controls
import Tarea6
import QtQuick.Layouts

Page {
    id: root

    readonly property alias genderLabel: genderLabel
    readonly property alias textField: textField
    readonly property alias button: button

    property int gender: -1


    title: "Predecir Genero"
    implicitWidth: Constants.width
    implicitHeight: Constants.height

    states: [
        State {
            name: "fetching"
            PropertyChanges {
                target: busyIndicator
                visible: true
            }
        },
        State {
            name: "male"
            when: gender === Gender.Male
            PropertyChanges {
                target: rectangle
                color: "blue"
            }
            PropertyChanges {
                target: genderLabel
                text: "Masculino"
            }
        },
        State {
            name: "female"
            when: gender === Gender.Female
            PropertyChanges {
                target: rectangle
                color: "pink"
            }
            PropertyChanges {
                target: genderLabel
                text: "Femenino"
            }
        }
    ]

    ColumnLayout {
        id: columnLayout
        width: root.width * .8
        height: root.height/2
        anchors.centerIn: parent

        TextField {
            id: textField
            font.pointSize: 13
            Layout.fillWidth: true
            placeholderText: qsTr("Ingresa un nombre")
        }

        Button {
            id: button
            text: qsTr("Predecir")
            font.pointSize: 13
            Layout.fillWidth: true
        }

        Rectangle {
            id: rectangle
            implicitWidth: 200
            implicitHeight: 200
            color: "transparent"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: genderLabel
                anchors.centerIn: parent
                text: qsTr("")
                font.bold: true
                font.pointSize: 12
            }

            BusyIndicator {
                id: busyIndicator
                anchors.centerIn: parent
                visible: false
            }
        }
    }
}
