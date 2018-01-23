#Exercise 1 
x = %w[1 2 3 4 5 6 7 8 9 10]

x.each do |x|
    puts x
end 


#Exercise 2 Same as above, but only print out values greater than 5.

x.each do|x|
    if x.to_i > 5 
        puts x 
    end 
end


#Exercise 3 extract all odd numbers into a new array.

revised = []
x.each do|x|
    if x.to_i % 2 != 0 
        revised << x 
    end 
end
puts revised 


#Exercise 4 Append "11" to the end of the original array. Prepend "0" to the beginning.
x[x.length] = 11 
puts x 


#Exericse 5 Get rid of "11". And append a "3".
x[x.length-1] = 3 
puts x 


#Exercise 6 Get rid of duplicates without specifically removing any one value.
x.uniq!
puts x 

#Exercise 7 What's the major difference between an Array and a Hash?
#hash is 2 dimentional, we have key and value 


#Exercise 8 Create a Hash using both Ruby syntax styles.
Hash2 = {:aya => 9 }
Hash1 = Hash.new 

    
#Exercise 9 Suppose you have a hash h = {a:1, b:2, c:3, d:4} 
#a)  Get the value of key `:b`.
#B) Add to this hash the key:value pair `{e:5}`
#C) Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4} 

puts h[:b]
h[:e] = 5 
puts h[:e]

h.delete_if { |k, v| v < 3.5 }



class Human 
    @@species = "Mammal"   ##class Variable is shared by all instances of the class 
     
     
     ##Here we have the constructor, and we set age = 18, which is a default value if left unfilled
     def initialize(name, age=18)
         #The below are called instance variables 
         @name = name 
         @age = age 
     end
     
     # Basic setter method
     def name=(name)
         @name = name 
     end 
     
     
     # Basic getter method
    def name 
         @name 
    end 
    
    # Ruby has a one-line shortcut for creating a getter and setter:
    attr_accessor :name

    # Getter/setter methods can also be created individually like this
    attr_reader :name
    attr_writer :name
         
     
    # A class method uses self to distinguish from instance methods.
    # It can only be called on the class, not an instance.
    
     def self.say(msg)
         puts "{# hello}"
     end 
     
     def species
         @@species
     end 
     
     def to_s
         [@name , @age].join(" ")
     end 
 end 
 
 
 aya = Human.new("Aya")
 puts aya 
 puts aya.species
 puts Human.say("hello")
 
 
 class RegexTester
     def initialize(pattern = nil)
         @pattern = nil unless pattern.nil?   #instance variable 
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
       @statement 
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

 end 
 
 
 regex = RegexTester.new
 regex.pattern = /^(http:\/\/)?www\.\w+\.(com|edu|org)/
 regex.statement = %w(http://www.google.com
apdock.com
microsoft.com)
regex.test 




module Myfirstmodule
    
    def say_hello
        puts "helllllooooooooo"
    end 
    
end 

class To_See_Module
    
    include Myfirstmodule
end 


m = To_See_Module.new 
m.say_hello







class Car
    @@Number_of_cars = 0 
    
    attr_accessor :name
    attr_accessor :model
    attr_accessor :color
    attr_accessor :year
    
    def initialize(name , model , color , year )
        @name = name 
        @model = model 
        @color = color 
        @year = year 
        @@Number_of_cars +=1 
    end 
    
    
    def self.number_of_cars
        if @@Number_of_cars == 1 
            puts "There is 1 car"
        else
            puts "there are #{@@Number_of_cars} cars "
        end 
    end 
    
    
    def to_s
        [@name , @model , @color ,@year ].join(" ")
    end 
    
    def name=(name)
       begin 
        raise RuntimeError if name ==""
        
       rescue RuntimeError
            STDERR.puts "You need to have atleast 1 statemnet to pass"
        end 
    end 
        
end 

x5 = Car.new("X5" , "BMW" , "Red" , 2018)
puts Car.number_of_cars


ml = Car.new("ML" , "Mercides" , "Grey" , 2017)
puts Car.number_of_cars

e = Car.new("" , "Cadillac" , "black" , 2016)
e.name = ""

puts Car.number_of_cars


puts x5 



options = %w[spam spam bacon eggs spam spam]
## ---------------------------WAY 1---------------------------------------------
i = 0 
n = options.length
begin 
puts options[i]
i+=1
end while i != n 

puts ""
## ---------------------------WAY 2---------------------------------------------
i = 0 
n = options.length
loop do 
    puts options[i]
    i+=1
    break if i >n 
end 

## ---------------------------WAY 3---------------------------------------------
n = options.size
i=0 
n.times do puts options[i]
i+=1
end
puts ""
## ---------------------------WAY 4---------------------------------------------
n = options.size
i=0 
0.upto(n) do puts options[i]
i+=1
end
puts ""
## ---------------------------- CAPITALIZE--------------------------------------

## CAPITALIZE

options.each do|x|
    puts x.capitalize
end 

## -----------------Get the count of the word spam -----------------------------


count  = 0 
options.each do|x|
    if x=="spam"
        count+=1
    end 
end 
puts count 

## -----------------------------------------------------------------------------


class RegexTester
    def initialize(pattern = nil)
        @pattern = pattern 
    end 
     attr_accessor :pattern
     
     def statement=(arr)
       begin 
       raise TypeError unless arr.class == Array
       raise RuntimeError if arr.empty?
       
       rescue RuntimeError 
       STDERR.puts "shouldnt be empty"
       
       rescue TypeError
       STDERR.puts "not an array"
   end 
   end 
   
   
    def statement 
        @statements 
    end 
     


     def test
         @statement.each do|statement|
            if patter_matches? statement
                puts "yes"
            else 
                puts "#{ statement} is invalid"
            end 
        end 
    end 

    def patter_matches? statement
        statement.match(@pattern) != nil
    end
     
            
 end 
 
 
regex1 = RegexTester.new

regex1.pattern = /^(http:\/\/)?www\.\w+\.(com|edu|org)/
regex1.statement = %w(http://www.google.com
apdock.com
microsoft.com)
regex.test
 

puts regex1.pattern
