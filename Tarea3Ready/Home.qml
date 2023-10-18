import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root

    ColumnLayout {
        width: root.width*.8
        anchors.centerIn: parent

        Image {
            source: "images/perfil.jpg"
            sourceSize: "256x256"
        }

        Label {
            text: "Jose Daniel Victoriano Bello"
        }

        Label {
            text: "202010646@itla.edu.do"
        }
    }
}
