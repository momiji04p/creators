class TopsController < ApplicationController
    def index
      @images = Image.all
      @videos = Video.all
      @image_pages = Image.page(params[:page]).per(20)
      @video_pages =Video.page(params[:page]).per(20)
    end
end
