require 'open-uri'

class WeatherController < ActionController::Base
	layout 'weather'
	respond_to :html, :xml, :json

	def index
		
	end

	def result
		source = "http://api.openweathermap.org/data/2.5/weather?q=Paris,fr"
    @data = JSON.load(open(source))
		render "result", 
         locals: { data: @data },
         layout: false
	end


end