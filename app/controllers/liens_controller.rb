class LiensController < ActionController::Base
	layout 'application'

	def index
		@liens = Lien.all.order('id ASC')
	end

	def new
		@liens = Lien.new
	end

	def create
		@liens = Lien.new(liens_params)

		if @liens.save
			redirect_to @liens
		else
			render 'new'
		end
	end

	def edit
		@liens = Lien.find(params[:id])
	end

	def show
	  @liens = Lien.find(params[:id])
	end

	def update
	    @liens = Lien.find(params[:id])

	    if @liens.update(liens_params)
	    	redirect_to liens_path
	    else
	      render 'edit'
	    end
  	end

	private
	
	def liens_params
		params.require(:liens).permit(:title, :description, :author, :link)
	end

end