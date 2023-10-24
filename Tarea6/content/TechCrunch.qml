import QtQuick 2.15
import "service.js" as Service

TechCrunchForm {
    listView.model: listModel
    Component.onCompleted: {
        Service.techCrunch(data => listModel.append(data.slice(0, 3)));
    }

    ListModel { id: listModel }
}
