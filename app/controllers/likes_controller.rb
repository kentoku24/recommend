class LikesController < ApplicationController
  def index
  end
  
  def unlike
    like = Like.find(params[:id])
    like.destroy
    redirect_to :back
  end
end
