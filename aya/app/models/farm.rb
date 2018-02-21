class Farm < ApplicationRecord
    has_many :chickens
    has_many :eggs , through: :chickens
end
