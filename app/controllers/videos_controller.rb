class VideosController < ApplicationController
  before_action :authenticate_user!,{only:[:new,:show,:edit]}
    def index
      @videos = Video.all
      @video_pages =Video.page(params[:page]).per(20)
    end
      
    def new
      @video = Video.new
    end
    
    def create
      @video = Video.new(video_params)
      @video.user = current_user
      if @video.save
          redirect_to videos_path
          flash[:success] = '投稿しました'
      else
          flash[:danger] = '投稿に失敗しました'
          redirect_to new_video_path
      end
    end
    
    def show
      @video =Video.find(params[:id])
    end
    
    def edit
      @video = Video.find(params[:id])
    end
    
    def update
      @video =Video.find(params[:id])
      @video.update(video_params)
      redirect_to video_path(@video.id)
    end
    
    def destroy
      @video = Video.find(params[:id])
      @video.destroy
      redirect_to videos_path
    end
    
private
    def video_params
      params.require(:video).permit(:thumbnail, :title, :genre, :information, :video, users:[:account_name])
    end
end
