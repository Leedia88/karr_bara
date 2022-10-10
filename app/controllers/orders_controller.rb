class OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      puts "Hourrraaayyyy"
    end
    redirect_to edit_order_path(@order)
  end

  def edit
  end

  def order_params
    params.require(:order).permit(:quantity)
  end

end
