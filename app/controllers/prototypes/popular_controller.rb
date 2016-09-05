class Prototypes::PopularController < ApplicationController
  def index
    @prototypes = Prototype.includes(:user).order("count DESC")
  end
end

