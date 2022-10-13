class OrderMeal < ApplicationRecord

  belongs_to :order
  belongs_to :menu
  belongs_to :recipe 
  belongs_to :cooking
  belongs_to :drink 
  belongs_to :steak


end
