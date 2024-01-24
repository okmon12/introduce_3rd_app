class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create   
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to users_path
    else
      render :new, status: :unprocessable_entity
   end
  end

  private
  def comment_params
    params.require(:comment).permit(:birthdate, :strengths, :weaknesses, :image, :message).merge(user_id: current_user.id)
  end
end

