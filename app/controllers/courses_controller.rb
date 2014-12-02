class CoursesController < ActionController::Base

	def index
		@courses = Course.all
	end

	def new
		@courses = Course.new
	end

	def create
		@courses = Course.new(courses_params)
		if @courses.save
			redirect_to @courses
		else
			render new
		end
	end

	def show
		@courses = Course.find(params[:id])
	end

end

private 

	def courses_params
		params.require(:courses).permit(:title, :category, :content)
	end