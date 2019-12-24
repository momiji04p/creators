class Image < ApplicationRecord
	belongs_to :user
	attachment :image
	has_many :favorites
	has_many :users, through: :favorites
end
