import QtQuick 2.15
import "service.js" as Service

UniversitiesInForm {
    listView.model: listModel
    Component.onCompleted: Service.universitiesByCountry(country, universitiesReceived);

    ListModel { id: listModel }

    function universitiesReceived(data) {
        const tmp = data;
        for (let i in data) {
            const domains = [];
            for (let domain of data[i].domains)
                domains.push({name: domain});

            const webPages = [];
            for (let page of data[i].web_pages)
                webPages.push({name: page});

            tmp[i].domains = domains;
            tmp[i].web_pages = webPages;
        }

        listModel.append(tmp);
    }
}
