class Cooking < ApplicationRecord

    has_many :order_meals
    
    def steno
        self.name.split(" ").map!{|x| x[0].downcase}.join("")
    end

end
