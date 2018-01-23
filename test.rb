def tax_calculator
total_price = 0 
products = []
prices = []
puts "Please enter the product name , or enter done"
products.push(gets.chomp)
puts "Please enter the product price, or enter done"

while user_input = gets.chomp 
prices.push(user_input)
    case user_input 
    
    when "done"
        puts "The selected products:"
        i=0
        while products[i] != "done"
        puts "Product: " + products[i]  + " Price:" + prices[i] + " QR"
        i+=1
end
        tax = total_price*1.06
        puts "The total price before tax is:  " + total_price.to_s + " QR"
        puts "The total price with tax is:  " + tax.to_s + " QR"
        break
    else
        puts "Please enter the product name , or enter done"
        products.push(gets.chomp)
        total_price += user_input.to_i
        puts "Please enter the product price, or enter done"
    end 
end 
end 

 tax_calculator