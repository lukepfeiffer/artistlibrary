class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(@user)
      redirect_to images_path
    else
      redirect_to sign_up_path
    end
  end

  def index
  end

  def user_params
    params.require(:user).permit(
      :email,
      :username,
      :password,
      :password_confirmation,
      :bio
    )
  end
end
