class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    movie = Movie.find(params[:movie_id])
    movie.comments.create(
      comment_params.merge(user_id: current_user.id)
    )
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:message)
  end
end
