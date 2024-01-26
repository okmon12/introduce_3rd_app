class UsersController < ApplicationController
 before_action :authenticate_user!, only: [:create]
  def index
    @users = User.all 
    @comments = Comment.all
  
  end

  def new
    @user = User.new
    @comment = Comment.new
  end
  
  def create   
    @comment = Comment.new(comment_params)
    puts current_user
    if @comment.save
      redirect_to users_path
    else
      redirect_to new_comment_path, alert: 'コメントの保存に失敗しました。'
    end
   end
   def show
    @user = User.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:birthdate, :strengths, :weaknesses, :image, :message).merge(user_id: current_user.id)
  end
end
