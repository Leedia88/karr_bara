class MealsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def index
    puts params
    @order = params[:order_id]
    @meals = OrderMeal.where(order_id:@order)
  end

  def destroy
  end
end
