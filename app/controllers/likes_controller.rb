class LikesController < ApplicationController
  def index
  end
  
  def unlike
    like = Like.find(params[:id])
    if like
      like.destroy
    end
    redirect_to :back
  end
end
