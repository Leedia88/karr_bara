class MealsController < ApplicationController
  before_action :set_order
  before_action :set_order_meal, except: [ :index]

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
    puts params
    puts "update on i va!!!"
    if @order_meal.update(order_meal_params)
      redirect_to order_meals_path(@order)
    else
      render edit_order_meal_path(@order, @order_meal)
    end
  end

  def index
    
  end

  def show
  end

  def destroy
  end

  def set_order
    @order = Order.find(params[:order_id].to_i)
  end

  def set_meal
    @meal = Meal.find(params[:id].to_i)
  end

  def meal_params
    params.require(:meal).permit(:order_id, :menu_id, :steak_id, :cooking_id, :drink_id, :dessert)
  end

end
