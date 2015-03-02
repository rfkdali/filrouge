require "rails_helper"

RSpec.describe GoalsController, :type => :controller do
  
  describe "requests on index" do
	  it "responds successfully" do
	    get :index
	    expect(response.status).to eq(200)
	  end
	end

end