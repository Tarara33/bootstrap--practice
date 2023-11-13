class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
    @user.build_profile
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_back_or_to items_path, success: "成功"
    else
      flash.now[:danger] = "失敗"
      render :new, status: :unprocessable_entity
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, profile_attributes: [:name])
    end
end
