require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase

	test "index" do
		get :index
		assert_response :success
	end

end