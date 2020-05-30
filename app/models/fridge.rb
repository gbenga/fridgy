class Fridge < ApplicationRecord
    belongs_to :user
    has_many :ingredients
    has_many :meals, through: :ingredients
end
