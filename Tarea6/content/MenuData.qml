import QtQuick 6.5
import QtQuick.Controls 6.5
import Tarea6

ListModel {
    id: listModel

    ListElement {
        title: "Inicio"
        componentUri: "Home.ui.qml"
    }

    ListElement {
        title: "Predecir genero"
        componentUri: "PredictGender.qml"
    }

    ListElement {
        title: "Determinar edad"
        componentUri: "DetermineAge.qml"
    }

    ListElement {
        title: "Universidades"
        componentUri: "Universities.qml"
    }

    ListElement {
        title: "Clima"
        componentUri: "Weather.qml"
    }

    ListElement {
        title: "TechCrunch"
        componentUri: "TechCrunch.qml"
    }

    ListElement {
        title: "Contratame"
        componentUri: "Hireme.qml"
    }
}
