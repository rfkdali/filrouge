require 'test_helper'

class GoalsControllerTest < ActionController::TestCase
	test "index" do
		get :index
		assert_response :success
	end
end