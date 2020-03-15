class Image < ApplicationRecord
	belongs_to :user
	attachment :image
	has_many :favorites ,dependent: :destroy
	has_many :users, through: :favorites
end
