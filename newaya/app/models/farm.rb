class Farm < ApplicationRecord
    has_many :chickens
    has_many :eggs, through: :chickens 
    
    #This is validation ===> This means the name and the location has to be filled or will roll back. 
    validates :name , :location , presence: true
    
    
    
    
    
    scope :alphebatical, -> { order('name asc') }
    scope :in_qatar , -> { where('location =?', "Qatar")}
    scope :with_leghorns , ->{ joins (:chickens).where('chickens.breed =?' , "Leghorn") } #because we need to access chciken for breed
end
