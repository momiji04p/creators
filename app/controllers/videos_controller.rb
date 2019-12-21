class VideosController < ApplicationController
    def index
      @videos = Video.all
      @video_pages =Video.page(params[:page]).per(15)
    end
      
    def new
      @video = Video.new
    end
    
    def create
      @video = Video.new(video_params)
      if @video.save
          redirect_to videos_path
          flash[:success] = '投稿しました'
      else
          flash[:danger] = '投稿に失敗しました'
          redirect_to new_video_path
      end
    end
    
private
    def video_params
      params.require(:video).permit(:title, :account_name, :information, :video)
    end
end
