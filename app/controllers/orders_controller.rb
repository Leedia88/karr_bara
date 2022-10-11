class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :index, :destroy]

  def index
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to edit_order_path(@order)
    else
      
    end
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
