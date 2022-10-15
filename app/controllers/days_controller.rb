class DaysController < ApplicationController
  def index
    @order = Order.new
  end
end
