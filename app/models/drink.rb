class Drink < ApplicationRecord

    has_many :order_meals

    def self.list
        Drink.where("name != ?" , "")
    end

    def steno
        case self.name
            when ""
                " /"
            when "Coca Cola"
                " CC"
            when "Coca Cola Zero"
                " CZ"
            when "Dr Pepper"
                " DP"
            when "Orangina"
                " Og"
            when "Canada Dry"
                " CD"
            when "Lipton Ice Tea"
                " IT"
            when "Citronnade Maison *"
                " Cit"
            when "Eau"
                " Eau"
            when "Perrier"
                " Per"
            when "Bière ambrée**"
                " LB"
            when "Bière blonde**"
                " NM"
            when "Sans Boisson"
                " /"
        end
    end
    
end
