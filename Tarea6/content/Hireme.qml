import QtQuick 2.15

HiremeForm {
    githubLabel.onLinkActivated: link => Qt.openUrlExternally(link)
    linkedinLabel.onLinkActivated: link => Qt.openUrlExternally(link)
}
