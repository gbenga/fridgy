class Meal < ApplicationRecord
    has_many :spices
    has_one :spice_rack, through: :spices
    has_many :ingredients
    has_one :fridge, through: :ingredients
    has_one :user, through: :fridge
    has_one :user, through: :spice_rack
end
