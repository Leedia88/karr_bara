class Meal < ApplicationRecord
  belongs_to :fry
  belongs_to :menu
  belongs_to :burger
  belongs_to :dessert
  belongs_to :drink
  belongs_to :burger
end
