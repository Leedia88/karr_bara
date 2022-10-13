class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :index, :destroy, :show]

  def index
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create!(order_params)
    if @order.save
      redirect_to edit_order_path(@order)
    else
      
    end
  end

  def show
    @schedule_order = ScheduleOrder.find_by(order: @order)
    @order_meals = @order.order_meals
  end

  def edit
    @schedule = Schedule.available(@order.quantity)
    @schedule_order = ScheduleOrder.new
  end

  def order_params
    params.require(:order).permit(:quantity)
  end

  def set_order
    @order = Order.find(params[:id])
  end

end
