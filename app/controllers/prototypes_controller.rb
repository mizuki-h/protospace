class PrototypesController < ApplicationController

  def index

  end

  def show

  end

  def new
    @prototype = Prototype.new
    @main_image = @prototype.prototype_images.build
    @sub_image =  2.times { @prototype.prototype_images.build }
  end

  def create
    @prototype = current_user.prototypes.new(prototype_params)
    if @prototype.save
       redirect_to root_url, notice: "Saved prototype Successfully"
    end
  end

  private

    def pototype_params
      params.permit(:title, :catchcopy, :concept, prototype_images_attributes: [:id, :status, :content])
    end

end
