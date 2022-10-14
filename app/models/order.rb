class Order < ApplicationRecord

    has_many :order_meals

    def total_amount
        amount = 0
        self.order_meals.each do |order_meal|
            amount += order_meal.price
        end
        return amount
    end

end
