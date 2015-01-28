class CoursesController < ActionController::Base

	def index
		@courses = Course.order('id ASC')
	end

	def new
		@courses = Course.new
	end

	def create
		@courses = Course.new(courses_params)
		if @courses.save
			redirect_to @courses
		else
			render 'new'
		end
	end

	def show
		@courses = Course.find(params[:id])
	end

	def edit
		@courses = Course.find(params[:id])
	end


	def update
	    @courses = Course.find(params[:id])
	    if @courses.update(courses_params)
	    	redirect_to courses_path
	    else
	      render 'edit'
	    end
  	end



	private 

	def courses_params
		params.require(:courses).permit(:title, :category, :content)
	end

end