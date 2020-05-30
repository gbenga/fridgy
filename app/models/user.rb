class User < ApplicationRecord
    has_one :fridge
    has_many :ingredients, through: :fridge
    has_many :meals, through: :ingredients
    has_one :spice_rack
    has_many :spices, through: :spice_rack
    has_many :meals, through: :spices
end
