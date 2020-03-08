class VideosFavoritesController < ApplicationController
    def create
      user = current_user
      @video =Video.find(params[:video_id])
      Favorite.create(user_id: user.id,image_id: @video.id)
      redirect_to video_path(@video.id)
    end

    def destroy
      user = current_user
      @video =Video.find(params[:video_id])
      favorite = Favorite.find_by(user_id: user.id,video_id: @video.id)
      favorite.delete
      redirect_to video_path(@video.id)
    end
end
