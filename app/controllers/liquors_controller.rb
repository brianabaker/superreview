class LiquorsController < ApplicationController
  def index
    @liquors = Liquor.all
  end

  def show
    @liquor = Liquor.find(params[:id])

  end


  def new
    @liquor = Liquor.new
  end

  def create
    @liquor = Liquor.create(liquor_params)
    # IM WITH MERYL
    redirect_to liquor_path(@liquor)
  end


  def edit
    @liquor = Liquor.find(params[:id])
  end

  def update
    @liquor = Liquor.find(params[:id])
    @liquor.update(liquor_params)
    redirect_to liquor_path(@liquor)
  end


  def liquor_params
    # WHAT IS STRONG PARAMS BEEEF!!!!
    # WHEN ? MASS ASSIGNMENT??
    params.require(:liquor).permit(:name)
  end
end
