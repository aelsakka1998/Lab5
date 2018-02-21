class Chicken < ApplicationRecord
    belongs_to :farm
    has_many :egg
    has_many :children
end
