class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:index]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def create   
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to users_path
    else
      render :new, status: :unprocessable_entity
   end
  end

  private
  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname,:name])
  end
end

