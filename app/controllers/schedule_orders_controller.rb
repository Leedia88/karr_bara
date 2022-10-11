class ScheduleOrdersController < ApplicationController

    def create
        @schedule_order = ScheduleOrder.new(schedule_order_params)
        if @schedule_order.save
            @order = Order.find(schedule_order_params["order_id"])
            @order.quantity.times do
                OrderMeal.create(order:@order)
            end
            redirect_to order_meals_path(@order)
        else
            redirect_to edit_order(@order)
        end
    end

    def schedule_order_params
        params.require(:schedule_order).permit(:schedule_id, :order_id)
    end

end
