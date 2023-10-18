import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Item {
    id: root

    ColumnLayout {
        width: root.width*.8
        anchors.centerIn: parent

        Image {
            source: "assets/perfil.jpg"
            sourceSize: "256x256"
        }

        Label { text: "Jose Daniel Victoriano Bello" }
    }
}
