import QtQuick
import QtQuick.Controls
import QtWebView

Page {
    id: root

    title: "En mi vida"

    Item {
        width: root.width*.9
        height: root.height/2
        anchors.centerIn: parent

        WebView {
            anchors.fill: parent
            url: "https://www.youtube.com/embed/YCL-2YmqWlI"
        }
    }
}
