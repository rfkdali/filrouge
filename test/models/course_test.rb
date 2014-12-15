require 'test_helper'
 
class CourseTest < ActiveSupport::TestCase

  test "should not save course without title" do
	  courses = Course.new
	  assert_not courses.save, "Saved the post without a title"
  end
end

  class GarrosTest < ActiveSupport::TestCase

  	test "true" do
  		assert_equal score(1), 1 
  	end
  end

  def score(number)
  	number
  end