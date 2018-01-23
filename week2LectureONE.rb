options = %w[spam spam bacon eggs spam spam]
# i=0 
# n= options.size -1 
# begin
# puts options[i]
# i+=1  #will execute the block while i < options.size

# end  while i < options.size


#another way 

# i=0 
# n= options.size - 1 
# loop do 
# puts options[i]
# i+=1  #will execute the block while i < options.size
# break if i> n 
# end 

# n = options.size 
# n.times do|i|
# puts options[i]
# end


# another way :
# n = options.size - 1 
# 0.upto(n) do |i|
#     puts options[i]
# end




#the blocks: 

# for food in options do 
#     puts food
# end 


# #another way : 
# options.each {|food| puts food}



# #another way 
# options.each do |food|
#   if food != "spam"
#       puts food.capitalize
#     else
#         puts "Quite , you vikings!"
#   end
# end


# spam_count = 0 
# options.each do|food|
# if food != "spam"
#     puts food.capitalize
# else
#     spam_count += 1
# end
# end
# puts "#{spam_count} times spam is said"

options.each {|food| puts food.capitalize unless food == "spam"}

