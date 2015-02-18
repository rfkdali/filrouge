require 'open-uri'

class WeatherController < ActionController::Base
	layout 'weather'

	def index
		# source = "http://api.openweathermap.org/data/2.5/weather?q=Paris,fr"
  # 	@data = JSON.load(open(source))
	end

end