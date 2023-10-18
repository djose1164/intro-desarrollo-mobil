/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import Tarea5 1.0
import QtQuick.Layouts

Page {
    id: root
    title: "Acerca de Peaky Blinder"
    implicitWidth: Constants.width
    implicitHeight: Constants.height

    ScrollView {
        id: scrollView
        anchors.fill: parent
        contentWidth: availableWidth

        ColumnLayout {
            id: columnLayout
            width: root.width*.9
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10

            Image {
                id: peakyblindercover
                source: "images/peaky-blinder-cover.jpg"
                Layout.topMargin: 15
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                sourceSize.width: columnLayout.width * .8
                sourceSize.height: columnLayout.width * .8
            }

            Label {
                id: label
                text: qsTr("\"Peaky Blinders\" es una popular serie de televisión británica que se estrenó en 2013. La trama se centra en la familia Shelby, una banda criminal con base en Birmingham, Inglaterra, durante el periodo de entreguerras (después de la Primera Guerra Mundial).")
                wrapMode: Text.Wrap
                Layout.topMargin: 10
                Layout.fillWidth: true
                font.pointSize: 14
            }

            Label {
                id: label5
                text: qsTr("La serie es conocida por su estilo visual distintivo, la interpretación destacada de actores como Cillian Murphy (quien interpreta a Thomas Shelby, el líder de la banda), y su mezcla de elementos históricos y ficticios. \"Peaky Blinders\" ha recibido elogios tanto de la crítica como del público por su trama intrigante y su atmósfera única.")
                wrapMode: Text.Wrap
                Layout.fillWidth: true
                font.pointSize: 14
            }

            Label {
                id: label1
                text: qsTr("Cantidad de temporadas")
                font.pointSize: 14
                font.bold: true
                Layout.topMargin: 15
            }

            Label {
                id: label2
                text: qsTr("Tiene un total de 6 temporadas. Cada temporada consta de varios episodios que varían en número.")
                wrapMode: Text.Wrap
                Layout.fillWidth: true
                font.pointSize: 14
                Layout.topMargin: 10
            }

            Label {
                id: label3
                text: qsTr("Creador")
                Layout.topMargin: 15
                font.bold: true
                font.pointSize: 14
            }

            Label {
                id: label4
                text: qsTr("La serie fue creada por Steven Knight, un guionista y director británico conocido por su trabajo en películas como \"Eastern Promises\" y \"Dirty Pretty Things\". Knight es el principal creador y guionista de \"Peaky Blinders\".")
                wrapMode: Text.Wrap
                Layout.fillWidth: true
                Layout.topMargin: 10
                font.pointSize: 14
            }

        }
    }

}
