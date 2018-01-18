class Drink < ApplicationRecord
  has_many :drink_ingredients
  has_many :liquors, through: :drink_ingredients
end
