class Article < ActiveRecord::Base
	def tags=(list)
		if list.is_a?(String)
			list = list.split(",")
		end	
		super(list)
	end
end