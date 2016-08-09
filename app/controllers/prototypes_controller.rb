class PrototypesController < ApplicationController

  def index

  end

  def show

  end

  def new

    @prototype = Prototype.new
    @prototype.prototype_images.build

  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    if @prototype.save
       redirect_to root_path, notice: "Saved prototype Successfully"
     else
      render :new, alert: 'Save to failure'
    end

  end

  private

    def prototype_params
      params.require(:prototype).permit(:title, :catchcopy, :concept, prototype_images_attributes: [:id, :status, :content])
    end

end


