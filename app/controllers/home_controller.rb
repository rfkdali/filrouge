class HomeController < ApplicationController
	http_basic_authenticate_with name: ENV['APP_USER'], password: ENV['APP_PASS']
	# authenticate_or_request_with_http_basic name: ENV["MON_LOGIN"], password: ENV["MON_PASS"]


	def index
		
	end

	def contact
		render plain: "test contact"
	end

	def test
		render plain: "test auth"
	end
end