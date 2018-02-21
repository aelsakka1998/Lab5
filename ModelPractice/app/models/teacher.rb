class Teacher < ApplicationRecord
    belongs_to :schools
    has_many :students 
end
