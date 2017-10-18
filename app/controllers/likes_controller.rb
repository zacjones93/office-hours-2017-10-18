class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    movie = Movie.find(params[:movie_id])
    movie.likes.create(
      user_id: current_user.id
    )
    redirect_to root_path
  end


end
