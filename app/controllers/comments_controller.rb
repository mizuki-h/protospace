class CommentsController < ApplicationController
  before_action :find_prototype ,only:[:create]

  def create
    @comments = @prototype.comments.includes(:user, :prototype)
    @comment = @prototype.comments.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:text, :user_id, :prototype_id)
  end
  #   private
  # def find_prototype
  #   @prototype = Prototype.find(params[:id])
  # end
end

