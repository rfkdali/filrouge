require 'test_helper'

class GoalsControllerTest < ActionController::TestCase

	test "index" do
		completed_goal = Fabricate(:goal, status: true, category: 'truc')
		goal = Fabricate(:goal, status: false, category: 'bidule')
		other_goal = Fabricate(:goal, status: false, category: 'truc')
		other_same_cat_goal = Fabricate(:goal, status: false, category: 'truc')
		get :index
		assert_response :success
		assert_equal [goal, other_goal, other_same_cat_goal], assigns(:goals)
		assert_equal ['truc', 'bidule'].sort, assigns(:categories).sort
	end

	test "index for a category" do
		goal = Fabricate(:goal_to_complete, category: 'katas')
		out_goal = Fabricate(:goal_to_complete, category: 'fraise')
		get :index, category: 'katas'
		assert_response :success
		assert_equal [goal], assigns(:goals)
	end
end