import QtQuick 2.15

UniversitiesForm {
    button.onClicked: appStack.push("UniversitiesIn.qml", {country: textField.text})
}
