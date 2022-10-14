class OrderMealsController < ApplicationController

  before_action :set_order
  before_action :set_order_meal, only: [ :edit, :update, :destroy, :show]


  def new
    @order_meal = OrderMeal.new
    @menus = Menu.all 
    @recipes = Recipe.all 
    @cookings = Cooking.all
    @steaks = Steak.all
    @drinks = Drink.all
  end

  def create
    puts params
    @order_meal = OrderMeal.create(order_meal_params.merge(order:@order))
    if @order_meal.save
      redirect_to order_path(@order)
    end
  end

  def edit
    puts params
    @menus = Menu.all 
    @recipes = Recipe.all 
    @cookings = Cooking.all
    @steaks = Steak.all
    @drinks = Drink.all
    if params[:fries]
      puts "Ouiiiiiiiii"
      redirect_to order_path(@order)
    elsif params[:duplicate]
      OrderMeal.create(menu: @order_meal.menu, recipe: @order_meal.recipe, steak: @order_meal.steak, cooking: @order_meal.cooking, 
        drink: @order_meal.drink, dessert: @order_meal.dessert, order:@order)
      redirect_to order_path(@order)
    end

  end

  def update
  puts params
    puts "update on i va!!!"
    if @order_meal.update(order_meal_params)
      redirect_to order_path(@order)
    else
      render edit_order_meal_path(@order, @order_meal)
    end
  end

  def destroy
  end

  def show
  end

  def index
    puts params
    @order_meals = OrderMeal.where(order_id:@order)
  end

  def set_order
    @order = Order.find(params[:order_id].to_i)
  end

  def set_order_meal
    @order_meal = OrderMeal.find(params[:id].to_i)
  end

  def order_meal_params
    params.require(:order_meal).permit(:order_id, :menu_id, :recipe_id, :steak_id, :cooking_id, :drink_id, :dessert)
  end

end
