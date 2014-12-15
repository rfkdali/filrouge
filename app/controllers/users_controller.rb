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
	end
  end