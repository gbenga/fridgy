class Ingredient < ApplicationRecord
    belongs_to :meal
    belongs_to :fridge
    delegate :user, :to => :fridge, :allow_nil => true
end
