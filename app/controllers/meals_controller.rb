class MealsController < ApplicationController

  def new
    @menus = Menu.all 
    @burgers = Recipe.all 
    @cookings = Cooking.all
    @steaks = Steak.all
    @drinks = Drink.all
  end

  def create
  end

  def edit
    @menus = Menu.all 
    @burgers = Recipe.all 
    @cookings = Cooking.all
    @steaks = Steak.all
    @drinks = Drink.all
  end

  def update
  end

  def index
    
  end

  def show
  end

  def destroy
  end

  # def set_order
  #   @order = Order.find(params[:order_id].to_i)
  # end

  def set_meal
    @meal = Meal.find(params[:id].to_i)
  end

  def meal_params
    params.require(:meal).permit(:order_id, :menu_id, :steak_id, :cooking_id, :drink_id, :dessert)
  end

end
