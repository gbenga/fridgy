class Spice < ApplicationRecord
    belongs_to :spice_rack
    belongs_to :meal
    delegate :user, :to => :spice_rack, :allow_nil => true
end
