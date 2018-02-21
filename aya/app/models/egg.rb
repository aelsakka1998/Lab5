class Egg < ApplicationRecord
    belongs_to :chickens
    has_one :farm , through: :chicken
end
