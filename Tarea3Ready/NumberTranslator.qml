import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: root

    ColumnLayout {
        width: root.width*.8
        anchors.centerIn: parent

        TextField {
            id: textField
            placeholderText: "Ingrese un numero"
            inputMethodHints: Qt.ImhDigitsOnly
            validator: IntValidator {}
            Layout.fillWidth: true
        }

        Button {
            text: "Traducir"
            Layout.fillWidth: true
            onClicked: result.text = translate(parseInt(textField.text))
        }

        Label {
            id: result
            font.pointSize: 15
        }
    }

    function translate(number: int) {
        const digits = ["", "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve"];
        const double_digits = ["diez", "once", "doce", "trece", "catorce", "quince", "dieciseis", "diecisiete", "dieciocho", "diecinueve"];
        const below_hundred = ["veinte", "treinta", "cuarenta", "cincuenta", "sesenta", "setenta", "ochenta", "noventa"];
        const below_thounsand = ["", "ciento", "doscientos", "trescientos", "cuatrocientos", "quinientos", "seiscientos", "setecientos", "ochocientos", "novecientos"];

        let word = "";
        if (number < 10)
            word = digits[number];
        else if (number < 20) // ejemplo: 50 - 10 = 5 como indice
            word = double_digits[number - 10];
        else if (number < 100) {
            const rem = number % 10;
            let reminder = translate(rem);
            const idx = (number - rem)/10 - 2;
            word = below_hundred[idx] + (reminder ? " y " + reminder : "");
        }
        else if (number < 1000) {
            const rem = number % 100;
            const idx = Math.trunc(number/100);
            if (rem === 0)
                word = below_thounsand[idx];
            else
                word = below_thounsand[idx] + " " + translate(rem)
        }
        return word;
    }
}
