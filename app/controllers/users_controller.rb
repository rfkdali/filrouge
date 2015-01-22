class UsersController < ApplicationController
  attr_accessor :name, :email
  
  def initialize(attributes = {})
		@name = attributes[:name]
		@email = attributes[:email]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
		debugger
	end

	def create
	    @user = User.new(user_params)
	    if @user.save	
	    	flash[:success] = "Bienvenue dans la nouvelle feature"
	    	redirect_to @user
	    else
	      render 'new'
	    end
  	end

  	private
  	
  	def user_params
  		params.require(:user).permit(:name,:email,:password,:password_confirmation)
  	end
  end