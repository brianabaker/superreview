class DrinksController < ApplicationController

  def index
    @drinks = Drink.all
  end

  def new
    @drink = Drink.new
    @liquors = Liquor.all
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def create
    # byebug
    @drink = Drink.new(drink_params)
    if @drink.valid?
      @drink.save
      redirect_to drink_path(@drink)
    else
      redirect_to new_drink_path
    end
  end

  def edit
    @drink = Drink.find(parmas[:id])
  end

  def update
    byebug
    @drink = Drink.find(parmas[:id])
    @drink.assign_attributes(drink_params)
    if @drink.valid?
      @drink.update(drink_params)
      redirect_to drink_path(@drink)
    else
      redirect_to edit_drink_path
    end
  end

  def destroy
    @drink = Drink.find(parmas[:id])
    @drink.destroy
    redirect_to drinks_path
  end

  private

#have to rotate that symbol when you're trying to pass it an array
#only in has many
  def drink_params
    params.require(:drink).permit(:name, :price, liquor_ids: [] )
  end

end
