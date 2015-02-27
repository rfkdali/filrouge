//= require jquery
//= require jquery_ujs
refresh()
function refresh(){
	$.ajax({
		url: $('#weather-config').data('url')
	}).done(function(data) {
		document.getElementById('city').innerHTML = "LOADING... (to be fixed)";
			paris = {
 					"city": data.name,
    			"temperature": parseInt(data.main.temp - 273),
  				"skystate" : data.weather[0].description,
    			"windSpeed": data.wind.speed,
    			"check_refresh": data.dt
    			};

    	document.getElementById('city').innerHTML = paris.city;
    	document.getElementById('temperature').innerHTML = "Temperature = " + paris.temperature + "°C";
    	document.getElementById('wind').innerHTML = "Wind speed = " + paris.windSpeed + " m/s";

    	if ( console && console.log ) {
			console.log( "Sample of data:", data );
			}

  });
  	window.setTimeout(refresh, 5000);
}


