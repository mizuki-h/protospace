class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(current_user)
  end

  def update
    current_user.update(user_params)
    if @user.update(user_params)
       redirect_to root_url, notice: "Updated Profile Successfully"
    else
       redirect_to edit_user_path, alert: 'Not be updated'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :member, :profile, :works, :avatar, :email)
  end

end


