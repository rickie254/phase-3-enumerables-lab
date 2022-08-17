require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_foods.map{|food| food[:name]}
end


def spiciest_foods(spicy_foods)
  spicy_foods.filter{|food| food[:heat_level]>5}
end


def print_spicy_foods(spicy_foods)
  spicy_foods.each{|food|puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: " + "🌶" * food[:heat_level]  }
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
 filtered = spicy_foods.filter {|food| food[:cuisine] == cuisine}
 filtered[0]
end


def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |food|
    food[:heat_level]
  end
 
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  spicy_foods.filter{|food| food[:heat_level]>5}.each{|food|puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: " + "🌶" * food[:heat_level]  }
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
total = spicy_foods.sum do |food|
     food[:heat_level]
     
  end
  average = total/spicy_foods.length
 
end