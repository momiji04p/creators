class FavoritesController < ApplicationController
    def create
      user = current_user
      @image =Image.find(params[:image_id])
      Favorite.create(user_id: user.id,image_id: @image.id)
      redirect_to image_path(@image.id)
    end

    def destroy
      user = current_user
      @image =Image.find(params[:image_id])
      favorite = Favorite.find_by(user_id: user.id,image_id: @image.id)
      favorite.delete
      redirect_to image_path(@image.id)
    end
    
end
