import QtQuick
import QtQuick.Controls
import QtWebView

ApplicationWindow {
    id: app
    width: 360
    height: 600
    visible: true
    title: qsTr("Tarea 3")
    Material.theme: Material.Dark

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Home {}

        Adder {}

        NumberTranslator {}

        MultiplicationTable {}

        Video {}
    }

    AppMenu {
        id: tabBar
        width: app.width
        anchors.bottom: swipeView.bottom
        currentIndex: swipeView.currentIndex
    }
}
