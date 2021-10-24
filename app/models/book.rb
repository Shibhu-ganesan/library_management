class Book < ApplicationRecord
	belongs_to :user
	belongs_to :vendor 

	def self.search_by(search_term)
		where("LOWER(bookname) LIKE :search_term",search_term: "%#{search_term.downcase}%")
	end
end
