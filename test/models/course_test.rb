require 'test_helper'
 
class CourseTest < ActiveSupport::TestCase

  test "should not save course without title" do
	  courses = Course.new
	  assert_not courses.save, "Saved the post without a title"
  end

end