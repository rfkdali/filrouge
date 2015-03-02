class GoalsController < ActionController::Base
	layout 'application'

	def index
		@goals = Goal.all.order('id ASC')
	end

	def new
		@goals = Goal.new
	end

	def create
		@goals = Goal.new(goals_params)

		if @goals.save
			redirect_to @goals
		else
			render 'new'
		end
	end

	def edit
		@goals = Goal.find(params[:id])
	end

	def show
	  @goals = Goal.find(params[:id])
	end

	def update
	    @goals = Goal.find(params[:id])

	    if @goals.update(goals_params)
	    	redirect_to goals_path
	    else
	      render 'edit'
	    end
  	end

  	def destroy
	  @goals = Goal.find(params[:id])
	  @goals.destroy

	  redirect_to goals_path
	end

	private
	
	def goals_params
		params.require(:goals).permit(:title, :description, :category, :status)
	end

end