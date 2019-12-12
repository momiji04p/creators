class Favorite < ApplicationRecord
	belongs_to :user
	has_many :images, dependent: :destory
 	has_many :videos, dependent: :destory
	has_many :books, dependent: :destory
	has_many :games, dependent: :destory
end
