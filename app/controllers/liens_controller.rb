class LiensController < ActionController::Base

	def index
		@liens = Lien.all
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

	def show
	  @liens = Lien.find(params[:id])
	end

	private
	def liens_params
		params.require(:liens).permit(:title, :description, :author, :lien)
	end

end