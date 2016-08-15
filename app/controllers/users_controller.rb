class UsersController < ApplicationController

  before_action :user_find ,only:[:show,:edit]

  def show
    @prototype = @user.prototypes.order("created_at DESC")
  end

  def edit

  end

  def update
    if current_user.update(user_params)
       redirect_to root_url, notice: "Updated Profile Successfully"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :member, :profile, :works, :avatar, :email)
  end

  def user_find
    @user = User.find(params[:id])
  end

end


