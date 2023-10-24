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
    property int ageStage: -1
    property int age

    property alias button: button
    property alias image: image
    property alias ageLabel: ageLabel
    property alias textField: textField

    implicitWidth: Constants.width
    implicitHeight: Constants.height
    title: "Determinar edad"

    ColumnLayout {
        id: columnLayout
        width: root.width * .8
        anchors.centerIn: parent
        spacing: 40

        TextField {
            id: textField
            font.pointSize: 13
            Layout.fillWidth: true
            placeholderText: qsTr("Ingrese un nombre")
        }

        Button {
            id: button
            text: qsTr("Determinar")
            font.pointSize: 13
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
        }

        Image {
            id: image
            sourceSize: `${columnLayout.height/2}x${columnLayout.height/2}`
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            BusyIndicator {
                id: busyIndicator
                anchors.centerIn: parent
                visible: false
            }
        }

        Label {
            id: ageLabel
            text: `La edad es ${age}`
            visible: age > 0
            horizontalAlignment: Text.AlignLeft
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font.pointSize: 12
        }
    }

    states: [
        State {
            name: "fetching"
            PropertyChanges {
                target: busyIndicator
                visible: true
            }
            PropertyChanges {
                target: ageLabel
                visible: false
            }
        },
        State {
            name: "old"
            when: ageStage === Age.Old
            PropertyChanges {
                target: image
                source: "images/oldman.svg"
            }
        },
        State {
            name: "adult"
            when: ageStage === Age.Adult
            PropertyChanges {
                target: image
                source: "images/adult.svg"
            }
        },
        State {
            name: "young"
            when: ageStage === Age.Young
            PropertyChanges {
                target: image
                source: "images/young.svg"
            }
        }
    ]
}
