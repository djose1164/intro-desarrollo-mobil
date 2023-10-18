import QtQuick 2.15

CharacterDelegateForm {
    onClicked: appStack.push("CharacterDetails.ui.qml", {name, imageUrl, description})
}
