class ScheduleOrdersController < ApplicationController
    
    before_action :set_schedule_order, only: [:edit, :destroy, :show, :update]
    before_action :set_order

    def new
        @schedule_order = ScheduleOrder.new
        @schedule_available = Schedule.schedule_available(@order.quantity)
    end

    def create
        @schedule_order = ScheduleOrder.create!(schedule_order_params)
        if @schedule_order.save
            @order = Order.find(schedule_order_params["order_id"])
            @schedule = @schedule_order.schedule
            puts @schedule
            new_available = @schedule.available - @order.quantity
            @schedule.update_attributes(available: new_available)
            redirect_to order_path(@order)
        else
            redirect_to edit_order_path(@order)
        end
    end

    def edit
        @schedule = @schedule_order.schedule
        new_available = @schedule.available + @order.quantity
        @schedule.update_attributes(available: new_available)
        @schedule_available = Schedule.schedule_available(@order.quantity).order(:slot)
    end
    
    def update
        puts params
        if @schedule_order.update(schedule_order_params)
            puts "ouais ça marche"
            @schedule = @schedule_order.schedule
            new_available = @schedule.available - @order.quantity
            @schedule.update_attributes(available: new_available)
            redirect_to order_path(@order)
        end
    end

    def destroy
puts params
    end

    def schedule_order_params
        params.require(:schedule_order).permit(:schedule_id, :order_id)
    end

    def set_schedule_order
        @schedule_order = ScheduleOrder.find(params[:id])
    end
    
    def set_order
        @order = Order.find(params[:order_id].to_i)
    end

end
