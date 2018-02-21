class Egg < ApplicationRecord
    belongs_to :chicken 
    has_one :farm , through: :chicken 
    
    validates :size , :color , presence:true 
    validates :size, numericality: {greater_than_or_equal_to: 1 } 
end




#scope are database call that you want to make available to your object 