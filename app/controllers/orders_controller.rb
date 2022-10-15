class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :destroy, :show, :update]

  def index
    @schedules = Schedule.all.order(:slot)
  end

  def new
    @order = Order.new
    @quantity = params[:quantity].to_i
    @schedule_available = Schedule.schedule_available(@quantity).order(:slot)
  end

  def create
    puts params
    @order = Order.create!(order_params)
    if @order.save
      redirect_to order_path(@order)
    else
      
    end
  end

  def show
    @order_meals = @order.order_meals.order(:id)
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
      puts  @order.schedule.available
      puts @order.quantity.class
      @new_available = @order.schedule.available - @order.quantity
      @order.schedule.update_attributes(available: @new_available)
      redirect_to order_path(@order)
    end
  end

  def destroy
  end

  def order_params
    params.require(:order).permit(:quantity, :schedule_id)
  end

  def set_order
    @order = Order.find(params[:id])
  end

end
