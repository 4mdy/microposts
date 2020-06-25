class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    #@like = current_user.favorites.new(micropost_id: params[:micropost_id])
    #if @like.save
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = "いいねしました"
    redirect_to root_url

  end

  def destroy
    #@like = Like.find_by(user_id: current_user.id, micropost_id: params[:micropost_id])
    #if @like.destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = "いいね解除しました"
    redirect_to root_url


  end
end
