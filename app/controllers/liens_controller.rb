class LiensController < ActionController::Base

	def index
		@liens = Lien.all
	end

	def create
		@liens = Lien.new(liens_params)
		@liens.save
		redirect_to @liens
	end

	def show
	  @liens = Lien.find(params[:id])
	end

	private
	def liens_params
		params.require(:liens).permit(:title, :description, :author, :lien)
	end

end