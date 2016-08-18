class PrototypesController < ApplicationController

  before_action :find_prototype ,only:[:show,:edit]

  def index
    @prototypes = Prototype.all.order("created_at DESC")
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

  def edit
  end

  def update
    if @prototype.update(prototype_params)
       redirect_to root_path, notice: "Saved prototype Successfully"
    end
  end

  def destroy
    @prototype.destroy
    redirect_to root_path, notice: "Deleted prototype Successfully"
  end

  private
  def prototype_params
      params.require(:prototype).permit(:title, :catchcopy, :concept, prototype_images_attributes: [:id, :status, :content])
  end

  private
  def find_prototype
    @prototype = Prototype.find(params[:id])
  end

end

