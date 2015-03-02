require 'rails_helper'

RSpec.describe GoalsController, type: :controller do
  
  describe "all method on index" do
  	it "get index" do
  		get :index
  		assert_response :success 
  	end

  	it "get new" do
  		get :new
  		assert_response :success 
  	end

  	it "user is able to post new goal" do
  		post :create, goals:
	  		{
	  			title: "test",
	  		 	description: "desc",
	  		 	category: "todo",
	  		 	status: "true"
	  		}

	  		assert_redirected_to goal_path(Goal.first)
	  		assert_equal 1, Goal.count
	  		assert_equal "test", Goal.first.title

  	end

  end

end