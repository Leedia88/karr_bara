class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :index, :destroy, :show, :update]

  def index
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create!(order_params)
    if @order.save
      redirect_to new_order_schedule_order_path(@order)
    else
      
    end
  end

  def show
    @schedule_order = ScheduleOrder.find_by(order: @order)
    @order_meals = @order.order_meals.order(:id)
  end

  def edit
    puts params
    puts @order.quantity
  end

  def update
    puts params
    if @order.update(order_params)
      redirect_to order_path(@order)
    end
  end

  def destroy
  end

  def order_params
    params.require(:order).permit(:quantity)
  end

  def set_order
    @order = Order.find(params[:id])
  end

end
