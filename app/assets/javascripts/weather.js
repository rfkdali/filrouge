//= require jquery
//= require jquery_ujs

// window.onload = function() {

// function GetData() {
//     var xhr;
//     xhr = new XMLHttpRequest();

//     xhr.onreadystatechange = function () {
    	
//    	var x = xhr.responseText
//     var result = JSON.parse(x);

//     paris = {"city": result.name,
//     				 "temperature": parseInt(result.main.temp - 273),
//     				 "skystate" : result.weather[0].description,
//     				 "windSpeed": result.wind.speed};

//     document.getElementById('city').innerHTML = "City = " + paris.city;
//     document.getElementById('temperature').innerHTML = "Temperature = " + paris.temperature;
//     document.getElementById('skystate').innerHTML = "Sky state = " + paris.skystate;
//     document.getElementById('wind').innerHTML = "Wind speed = " + parseInt(paris.windSpeed * 3.6);

//     }
//     xhr.open('GET', '/'); 
//     xhr.send(null);
// }

// GetData();

// }

$(document).ready(function() {
    $.ajax({
        url: "weather/result",
        cache: false,
        success: function(html){
          $("#city").append(html);
        }
    });

    console.log("ok")
});