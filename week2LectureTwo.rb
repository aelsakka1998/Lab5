# options = %w[spam spam bacon eggs spam spam]
# begin 
#     puts "This is some code"
#     raise "A test exception"
#     puts "this is after the exception and will never run"
    
    
#     rescue RuntimeError
#     puts "RuntimeError rescued"
    
    
#     rescue Exception => e 
#     puts e.message
    
    
# end 

class Name
    attr_reader :first  , :last    #create setters and getters 
    
    def first=(first)
        if first == nil or first.size ==0
            raise ArgumentError.new('Everyone musthave a first name')
        end 
        first[0] = first[0].chr.capitalize
        @first = first
    end 
    
    
    def last=(last)
        if last == nil or last.size== 0 
            raise ArgumentError.new('Everyone must have a last name')
        end
        @last = last
    end
    
    def full_name
        "#{@first} #{@last}"
    end
    
    def initialize(first , last)
       self.first = first 
       self.last = last
        
    end 
    
    
    
end 

n= Name.new("John" , "Smith")
# n.first = "aya"
# n.last = "El-sakka"
puts n.first
puts n.last
puts n.full_name



class Person 
    @@number_of_person  = 0 
    attr_accessor :fname , :lname
    
    def initialize(fname , lname)
        @fname = fname 
        @lname = lname 
        @@number_of_person += 1
    end 
    
    def self.number_of_person     #class method
         @@number_of_person
    end
    
    def self.cumilative_count
        return "no people exist yet" if @@number_of_person.zero?
        "#{@@number_of_person} #{(@@number_of_person == 1) ?  'person exist' : 'people exits'  }"
    end 
    
    
    def to_s
        [@fname , @lname].join(" ")
    end
    
    
end




p = Person.new("aya" , "El-sakka")
puts "The first name is #{p.fname} " 
puts Person.number_of_person


p2 = Person.new("yasmin" , "Abdelaal")
puts Person.cumilative_count  # self.method because its a class method

puts p.fname