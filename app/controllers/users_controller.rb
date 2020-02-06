class UsersController < ApplicationController
    def index
        @user = current_user
        @images =Image.where("user_id", @user.id)
        @videos =Video.where("user_id", @user.id)
        @image_pages = Image.page(params[:page]).per(10)
        @video_pages =Video.page(params[:page]).per(10)
    end
    
    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to users_path(@user.id)
    end
    
    def edit
      @user_image = User.new
	  @user = User.find(params[:id])
	  if @user.id != current_user.id
	     redirect_to user_path(current_user)
	  end
	end

private
    def user_params
    	params.require(:user).permit(:account_name, :image, :introduction)
    end
end
