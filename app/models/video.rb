class Video < ApplicationRecord
   belongs_to :user
   has_many :favorites
   has_many :users, through: :favorites
   mount_uploader :video, VideoUploader
   mount_uploader :thumbnail, VideoImageUploader
end
