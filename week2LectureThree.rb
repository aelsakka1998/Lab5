class Person 
    @@number_of_people = 0  #class scope
    attr_accessor :fname , :lname #symbol 
    
    def initialize(fname="Aya" , lname="El-sakka") #local variable 
        @fname = fname #instance variable is @@
        @lname = lname
        @@number_of_people += 1
    end
    
    
    def self.number_of_people    #class level methods start with self.
        @@number_of_people
    end 
    
    def cumulitive_count
        "#{@@number_of_people} #{(@@number_of_people == 1) ? 'person exists' : 'people exists'}"
    end 
    
    
    def to_s
        [@fname , @lname].join(" ")
    end 
    
end

p  = Person.new
puts "The first person is: #{p.fname}"



class Employee < Person
end

e = Employee.new("Aya")

puts "First name is: #{e.fname}"
puts e.cumulitive_count

puts e 




module MyFirstModule
    def say_hello
        puts 'Hello'
    end 
end 

class ModuleTester
    include MyFirstModule
end

mt = ModuleTester.new
mt.say_hello




class RegexTester
    def initialize(pattern = nil)
        @pattern = pattern unless pattern.nil?
    end
    
    attr_accessor :pattern
    
    def statement=(arr)
       begin 
        raise TypeError unless arr.class == Array
        raise RuntimeError if arr.empty?
        
        @statement= arr
        rescue RuntimeError
            STDERR.puts "You need to have atleast 1 statemnet to pass"
        exit 
        rescue TypeError
            STDERR.puts "You must enter an array of statements to use reggex"
        exit 
        
   end
        
    end
    
    
    def statement 
        @statements 
    end 
    
    def test
        @statement.each do|statement|
        if patter_matches? statement
            puts "Match #{statement}"
        else
            puts "oppppss doesn't match #{statement}"
        end 
        end
    end 
    
    private 
    def patter_matches? statement
        statement.match(@pattern) != nil
    end
    
    def add_insult
        STDRR.puts "----------------"
        STDRR.puts "heloo im aya"
    end 
    
end 

regex = RegexTester.new
regex.pattern  = /^(http:\/\/)?www\.\w+\.(com|edu|org)/
regex.statement = %w(http://www.google.com
apdock.com
microsoft.com)
regex.test 