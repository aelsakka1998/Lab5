class Chicken < ApplicationRecord
    belongs_to :farm
    has_many :eggs 
    
     validates :name , :breed , presence:true 
     
     
     
     
     
     
     scope :leghorns , -> {where('breed = ?' , "Leghorn")} 
     scope :egg_count_last_n_days , lambda { |days| joins(:eggs).where('eggs.created_at > ?' , days).count}
     
     #lambda is unnamed function , when we call egg_count_dfggggg it will pass the lambda function , days is what we pass. 
end
