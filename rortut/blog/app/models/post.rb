class Post < ApplicationRecord
	has_many :comments
	validates :title, :content, :presence =>true
	validates :title, :length => { :minimum => 2 }
	validates :title, :uniqueness => true
end
