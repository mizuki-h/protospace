class LikesController < ApplicationController

before_action :find_prototype ,only:[:create, :destroy]

  def create
    @like = @prototype.likes.create(user_id: current_user.id)
    @prototype = Prototype.find(params[:prototype_id])
  end

  def destroy
    @prototype.likes.find_by(params[:user_id]).destroy
  end

  private
  def find_prototype
    @prototype = Prototype.find(params[:prototype_id])
  end
end

