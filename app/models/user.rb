class User < ApplicationRecord
    has_one :fridge
    has_many :ingredients, through: :fridge
    has_many :meals, through: :ingredients
    has_one :spice_rack
    has_many :spices, through: :spice_rack
    has_many :meals, through: :spices

    accepts_nested_attributes_for :ingredients

    def most_expensive_spices
        self.spices.sort_by{|s| -s.price}
    end

    def most_expensive_ingredients
        self.ingredients.sort_by{|i| -i.price}
    end

end
