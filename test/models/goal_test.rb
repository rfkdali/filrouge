require 'test_helper'

class GoalTest < ActiveSupport::TestCase
	test "have avalid fabricator" do
		assert Fabricate.build(:goal).valid?
	end

	test "can access to completed goals" do
		completed_goal = Fabricate(:goal, status: true)
		goal = Fabricate(:goal, status: false)
		assert_equal [completed_goal], Goal.completed
	end

	test "can access to to_complete goals" do
		completed_goal = Fabricate(:goal, status: true)
		goal = Fabricate(:goal, status: false)
		assert_equal [goal], Goal.to_complete
	end

	test "categories" do
		Fabricate(:goal, category: 'katas')
		Fabricate(:goal, category: 'truc')
		Fabricate(:goal, category: 'katas')
		assert_equal ["katas", "truc"], Goal.categories
	end
end