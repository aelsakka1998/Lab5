begin 
1/0 
rescue 
puts "this is an error to be handled"

end


class Name
    attr_accessor :first , :last
    def first=(first)
        if first == nil 
            raise ArgumentError.new("Everyone must have a name")
        end
        @first = first.capitalize
    end 
    
   def last=(last)
        if last == nil 
           raise ArgumentError.new("Everyone must have a name")
        end 
        @last = last.capitalize
    end
    
    def full_name
        puts "#{@first} #{@last}"
    end
    
    def initialize(fname , lname)
        self.first = fname 
        self.last = lname
    end 
end 


aya = Name.new("aya"  , "El-sakka")
puts aya.full_name
puts aya.first


class Person 
    @@number_of_person = 0 
    attr_accessor :fname , :lname
    
    def initialize(fname , lname)
        @fname = fname
        @lname = lname
        @@number_of_person +=1
    end
    
    
    def self.number_of_person
        @@number_of_person
    end 
    
    def to_s
        [@fname , @lname].join(" ")
    end
end 


p = Person.new("Aya" , "ALi")
p.fname
puts p.to_s