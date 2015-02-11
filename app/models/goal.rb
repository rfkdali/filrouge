class Goal < ActiveRecord::Base

	scope :completed, -> { where(status: true) }
	scope :to_complete, -> { where(status: false) }

  	def self.categories
  		self.all.map(&:category).uniq.compact
  	end
end