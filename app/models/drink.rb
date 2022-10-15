class Drink < ApplicationRecord

    has_many :order_meals

    def self.list
        Drink.where("name != ?" , "")
    end
    
end
