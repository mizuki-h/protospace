class Prototypes::PopularController < ApplicationController
  def index
    @prototypes = Prototype.includes(:user).order("count DESC").page(params[:page]).per(8)
  end
end

