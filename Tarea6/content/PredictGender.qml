import QtQuick 2.15
import QtQuick.Controls 2.15
import Tarea6 1.0
import "service.js" as Service

PredictGenderForm {
    button.onClicked: {
        state = "fetching";
        Service.predictGender(textField.text, predictionReceived);
    }

    function predictionReceived(data) {
        if (data.gender === "male")
            gender = Gender.Male;
        else
            gender = Gender.Female;
    }
}
