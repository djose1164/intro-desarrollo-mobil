function request(url, callback) {
    const xhr = new XMLHttpRequest;
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            const response = JSON.parse(xhr.responseText.toString());
            callback(response);
        }
    }
    xhr.open("GET", url);
    xhr.send();
}

function predictGender(name, callback) {
    const url = "https://api.genderize.io/?name=" + name;
    request(url, callback);
}

function determineAge(name, callback) {
    const url = `https://api.agify.io/?name=${name}`;
    request(url, callback);
}

function universitiesByCountry(country, callback) {
    const url = `http://universities.hipolabs.com/search?country=${country}`;
    request(url, callback);
}

function weatherIn(city, callbacak) {
    const cityUri = encodeURIComponent(city);
    const url = `http://api.openweathermap.org/data/2.5/weather?q=${cityUri}&type=like&APPID=7b6e61038914b2c13915adcb9087ce7d&lang=es&units=metric`
    request(url, callbacak)
}

function techCrunch(callback) {
    const url = "https://techcrunch.com/wp-json/wp/v2/posts";
    request(url, callback);
}
