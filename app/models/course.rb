class Course < ActiveRecord::Base
	validates :title, presence: true
	validates :category, presence: true
	validates :content, presence: true

end