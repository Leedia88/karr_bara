class Order < ApplicationRecord

    belongs_to :schedule
    has_many :order_meals
    
    validates :user, :presence => true, 
        :format => { :with => /\A[a-zA-Z]+\z/, 
        :message => "Only letters allowed" }

    def stock_cannot_be_negative
        if schedule.available < quantity
            errors.add(:schedule, "This slot is not anymore available")
        end
    end

    def total_amount
        amount = 0
        self.order_meals.each do |order_meal|
            amount += order_meal.price
        end
        return amount
    end

end
