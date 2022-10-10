class Burger < ApplicationRecord
  belongs_to :recipe
  belongs_to :cooking
  belongs_to :steak
end
