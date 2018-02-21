food = %w(aya maryam noor yasmin zainab)
reversed = []

food.each do|x|
    reversed << x.reverse!
end 

puts reversed 


#Loops 

options = %w[spam spam bacon eggs spam spam]
i=0
n= options.size-1
begin 
    puts options[i]
    i+=1
end while i < options.size
    
    
#Another way 
puts "-----------------------------------------------"
i=0
n= options.size-1
loop do 
    puts options[i]
    i+=1
    break if i > options.size
end 

#Another way 
puts "-----------------------------------------------"

0.upto(n) do|i|
    puts options[i]
end 


#Another way 
puts "-----------------------------------------------"

for food in options 
    puts food
end 

#Capitalize spam 
puts "-----------------------------------------------"

options.each do|food|
    if food == "spam"
        food.capitalize
    else
        food = "nope"
    end 
end 

    puts options 
    
puts "-----------------------------------------------" 
    
options.each {|food| puts food.capitalize unless food == "spam"}
        
puts "------------------------classes-----------------------------"



class Person
    @@number_of_person = 0 
    attr_accessor :fname , :lname
    
    def initialize(fname , lname)
        @fname = fname 
        @lname = lname 
        @@number_of_person +=1 
    end 
    
    def self.number_of_person
        return @@number_of_person
    end 
    
    def to_s
        [@fname , @lname].join(" ")
    end 
end 
    
    
p1 = Person.new("aya" , "elsakka")
puts Person.number_of_person
puts p1.fname
p1.fname = "m"
puts p1.fname 


test = %w(aya noor yasmin)

test.each do |x|
    puts x.reverse
end 

