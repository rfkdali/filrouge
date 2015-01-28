class Lien < ActiveRecord::Base
	validates :title, presence: true,
                    length: { minimum: 5 }
    validates :description, presence: true,
                    length: { minimum: 5 }
    validates :author, presence: true,
                    length: { minimum: 2 }
    validates :link, presence: true,
                    length: { minimum: 5 }
end