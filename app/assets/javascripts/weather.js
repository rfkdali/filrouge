window.onload = function() {

function GetData() {
    var xhr;
    xhr = new XMLHttpRequest();

    

    xhr.onreadystatechange = function () {
    	
   	var x = xhr.responseText
    var result = JSON.parse(x);

    paris = {"city": result.name,
    				 "temperature": parseInt(result.main.temp - 273),
    				 "skystate" : result.weather[0].description,
    				 "windSpeed": result.wind.speed};

    document.getElementById('city').innerHTML = "City = " + paris.city;
    document.getElementById('temperature').innerHTML = "Temperature = " + paris.temperature;
    document.getElementById('skystate').innerHTML = "Sky state = " + paris.skystate;
    document.getElementById('wind').innerHTML = "Wind speed = " + parseInt(paris.windSpeed * 3.6);

    }
    xhr.open('GET', 'http://api.openweathermap.org/data/2.5/weather?q=Paris,fr', "dataType: 'json'"); 
    xhr.send(null);
}

GetData();

}
