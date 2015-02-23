require 'test_helper'

class GoalsControllerTest < ActionController::TestCase

	test "index articles" do
		title = Fabricate(:article, title: 'truc')
		description = Fabricate(:article, description: 'mouche')
		get :index
		assert_response :success
		assert_equal [title], assigns(:articles)
	end

end