class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :destroy, :show, :update]

  def index
    @total_available = Schedule.total_available
    @schedules = Schedule.all.order(:slot)
  end

  def new
    @order = Order.new
    @quantity = params[:quantity].to_i
    @schedule_available = Schedule.schedule_available(@quantity).order(:slot)
  end

  def create
    
    @order = Order.new(order_params)
    respond_to do |format|
      format.html {
        if @order.save
          @new_available = @order.schedule.available - @order.quantity
          @order.schedule.update_attributes(available: @new_available)
          redirect_to order_path(@order)
        else
          redirect_to root_path
          flash[:danger] = "Prénom incorrect!"
        end
      }
    end
  end

  def show
    @order_meal = OrderMeal.new
    @menus = Menu.all 
    @recipes = Recipe.all 
    @cookings = Cooking.all
    @drinks = Drink.list
    respond_to do |format|
      format.html {
        @order_meals = @order.order_meals.order(:id)
      }
    end
  end

  def edit
    @new_available = @order.schedule.available + @order.quantity
    @order.schedule.update_attributes(available: @new_available)
    @schedule_available = Schedule.schedule_available(@order.quantity).order(:slot)
  end

  def update
    puts params
    if @order.update(order_params)
      puts "ouais ça marche yoooo"
      @new_available = @order.schedule.available - @order.quantity
      @order.schedule.update_attributes(available: @new_available)
      redirect_to order_path(@order)
    end
  end

  def destroy
    puts params
    @order.destroy
    flash[:warning] = "Commande supprimée"
    redirect_to root_path
  end

  def order_params
    params.require(:order).permit(:quantity, :schedule_id, :user)
  end

  def set_order
    @order = Order.find(params[:id])
  end

end
