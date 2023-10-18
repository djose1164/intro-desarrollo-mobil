import QtQuick
import QtQuick.Controls
import QtWebView

Item {
    id: root

    WebView {
        width: root.width
        height: root.height - 40
        url: "https://youtu.be/q9IPKAJ1iKA"
    }
}
