import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // Daniel Victoriano - 202010646
    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Presentation {}

        Multiplication {}

        ThreeNumbers {}
    }

    TabBar {
        id: tabBar
        width: parent.width
        anchors.bottom: swipeView.bottom
        currentIndex: swipeView.currentIndex

        TabButton { text: "Inicio" }

        TabButton { text: "Tabla" }

        TabButton { text: "Numeros" }
    }
}
