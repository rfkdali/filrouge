require 'open-uri'

class WeatherController < ActionController::Base
	layout 'weather'

	def index
		
	end

	def api
		source = "http://api.openweathermap.org/data/2.5/weather?q=Paris,fr"
    @data = JSON.load(open(source))
    render json: @data
	end


end