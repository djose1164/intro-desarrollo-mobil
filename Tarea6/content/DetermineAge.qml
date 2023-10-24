import QtQuick
import "service.js" as Service

DetermineAgeForm {
    button.onClicked: {
        state = "fetching";
        Service.determineAge(textField.text, ageReceived);
    }

    function ageReceived(data) {
        age = data.age;
        if (age <= 19)
            ageStage = Age.Young;
        else if (age <= 59)
            ageStage = Age.Adult;
        else
            ageStage = Age.Old;
    }
}
