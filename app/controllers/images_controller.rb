class ImagesController < ApplicationController
  before_action :authenticate_user!,{only:[:new,:show,:edit]}
    def index
      @images = Image.all
      @image_pages = Image.page(params[:page]).per(20)
    end
    
    def new
      @image = Image.new
    end
    
    def show
      @image = Image.find(params[:id])
    end
    
    def create
      @image = Image.new(image_params)
      @image.user = current_user
      if @image.save
        redirect_to images_path
        flash[:success] = '投稿しました'
      else
        flash[:danger] = '投稿できませんでした'
        redirect_to new_image_path
      end
    end
    
    def edit
      @image =Image.find(params[:id])
    end
    
    def update
      @image = Image.find(params[:id])
      @image.update(image_params)
      redirect_to image_path(@image.id)
    end
    
    def destroy
      @image = Image.find(params[:id])
      @image.destroy
      redirect_to images_path
    end

private
    def image_params
      params.require(:image).permit(:image, :title, :genre, :information, users: [:account_name])
    end
end
