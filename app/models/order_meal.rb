class OrderMeal < ApplicationRecord

  belongs_to :order
  belongs_to :menu
  belongs_to :recipe 
  belongs_to :cooking
  belongs_to :drink 
  belongs_to :steak

  after_save :calculate_price

  def is_not_meat?
        self.steak.name != "Viande"
  end

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

end