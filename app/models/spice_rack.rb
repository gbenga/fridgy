class SpiceRack < ApplicationRecord
    belongs_to :user
    has_many :spices
    has_many :meals, through: :spices
end
