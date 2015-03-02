require "rails_helper"

RSpec.describe Goal, :type => :model do
	
	describe "number of post" do
		it "post count" do
      expect(Goal.count).to eq(0)
    end

    it "post count after create one" do
      goal = Goal.create!
      expect(Goal.count).to eq(1)
    end

    it "post count test" do
      expect(Goal.count).to eq(0)
    end
	end

end