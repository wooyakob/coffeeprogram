# define function that takes one argument, grams of coffee. Inside function, calculate amount of water required using ratio. Return calculated water grams value

def calculate_water(coffee_grams)
    water_grams = coffee_grams * 15
    return water_grams
  end
  
  #Print message to console, ask user for coffee grams. Convert string to a floating point number
  
  print "Enter amount of coffee in grams: "
  coffee_grams = gets.to_f
  
  
  #store calculated water grams in variable
  water_grams = calculate_water(coffee_grams)
  
  #use string interpolation to insert values of coffee grams and water grams and display it to the console
  puts "For #{coffee_grams} grams of coffee, you need #{water_grams} grams of water."