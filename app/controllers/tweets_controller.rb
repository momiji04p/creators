class TweetsController < ApplicationController
    def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(tweet_params)
  end

 private
  def tweet_params
    params.require(:tweet).permit(:video)
  end
end
