class OrderMeal < ApplicationRecord

  belongs_to :order
  belongs_to :menu
  belongs_to :recipe 
  belongs_to :cooking 
  belongs_to :drink

  after_save :calculate_price
  
  def calculate_price
    if self.menu.name == "Menu"
      case self.recipe.name
      when "Devezh"
        self.price = 15
      when "Classic"
        self.price = 12
      when "Barbecue"
        self.price = 11,5
      when "Kampinod"
        self.price = 11
      end
    end
  end


 def recap
   dessert = self.dessert ? "Oui" : ""
   drink = self.drink.name == "Sans Boisson" ? "/" : self.drink.name
   return "#{self.menu.name} #{self.recipe.name} #{self.cooking.name} #{drink} #{dessert}"
 end 

  def steno
    fries = (self.menu.name == "Menu" || self.menu.name == "Burger + Frites") ? " F" : " /"
    return self.recipe.name[0] + self.cooking.steno + fries + self.drink.steno
  end
end
