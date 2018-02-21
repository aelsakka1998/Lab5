class Chicken < ApplicationRecord
    belongs_to :farm
    has_many :eggs
end
