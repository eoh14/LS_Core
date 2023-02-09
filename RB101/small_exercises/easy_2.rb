#1
def how_old(name = "Teddy")
  puts "Name:"
  name = gets.chomp
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

#2
def area_of_room
  puts "Enter Length of the room in meters:"
  length_input = gets.chomp.to_f
  puts "Enter the width of the room in meters:"
  width_input = gets.chomp.to_f
  
  area_sq_m = length_input * width_input
  area_sq_ft = area_sq_m * 10.7639
  puts "The area of the room is #{area_sq_m} square meters (#{area_sq_ft} square feet)"
end

#3
def tip_calculator
  puts "What is the bill?"
  bill = gets.chomp.to_f
  puts "What is the tip percentage?"
  tip_percentage = gets.chomp.to_f / 100
  
  tip = sprintf('%.2f', bill * tip_percentage)
  total = sprintf('%.2f', bill + tip)
  
  puts "The tip is $#{tip}"
  puts "The total is $#{total}"
end

#4

def retirement_calculator
  puts "What is your age?"
  user_age = gets.chomp.to_i
  puts "At what age would you like to retire?"
  desired_retirement = gets.chomp.to_i
  
  current_year = Time.now.year
  years_work_left = desired_retirement - user_age
  retirement_year = Time.now.year + years_work_left
  puts "It's #{current_year}. You will retire in #{retirement_year}."
  puts "You have only #{years_work_left} years of work to go!"
end

#5
def greet_you
  puts "What is your name?"
  user_name = gets.chomp
  if user_name.include?("!")
    user_name.chop!
    puts "HELLO #{user_name.upcase}. WHY ARE WE SCREAMING?"
  end
  puts "Hello #{user_name}."
end

#6
def odd_num_printer
  (1..99).each do |x|
    puts x if x.odd? 
  end
end


def odd_num_printer_2
  (1..99).select do |x|
    puts x if x.odd? 
  end
end

def even_num_printer
  (1..99).select do |x|
    puts x if x.even?
  end
end

#7
def range_calculator
  puts "Please enter an integer greater than 0:"
  user_input = gets.chomp.to_i
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  user_choice = gets.chomp
  
  if user_choice == "s"
    sum = (1..user_input).inject(:+)
    puts "The sum of the integers between 1 and #{user_input} is #{sum}."
  elsif user_choice == "p"
    product = (1..user_input).inject(:*)
    puts "The product of the integers between 1 and #{user_input} is #{product}."
  end
end

#8
#BOB BOB

#9
#[Moe, Larry, CURLY, SHEMP, Harpo, CHICO, Groucho, Zeppo] for both array 1 & 2