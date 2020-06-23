class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.build(user_id: current_user.id, micropost_id: params[:micropost_id])
    favorite.save
  end

  def destroy
    favorite = current_user.favorite.find_by(user_id: current_user.id, micropost_id: params[:micropost_id])
    favorite.destroy
  end
end
