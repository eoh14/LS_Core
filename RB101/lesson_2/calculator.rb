def validate_num? num
  /^-?\d+$/.match(num) #regex. this grabs a string and performs the .match operation.
end

def calculator
  Kernel.puts("Please input the first number:")
  x = Kernel.gets().chomp()
  if validate_num?(x) == nil
    Kernel.puts("Invalid number. Try again.")
    calculator
  end
  Kernel.puts("Please input the second number:")
  y = Kernel.gets().chomp()
  if validate_num?(y) == nil
    Kernel.puts("Invalid number. Try again.")
    calculator
  end
  Kernel.puts("Please state the type of operation to perform (add,subtract,multiply or divide):")
  user_choice = Kernel.gets().chomp()
  x = x.to_i
  y = y.to_i
  
  case user_choice
  when "add"
    Kernel.puts(x + y)
  when "subtract"
    Kernel.puts(x - y)
  when "divide"
    Kernel.puts(x.to_f / y.to_f)
  when "multiply"
    Kernel.puts(x * y)
  else
    Kernel.puts("Error. Please try again.")
    calculator
  end
  Kernel.puts("Would you like to calculate again? (y/n):")
  user_input = Kernel.gets().chomp()
  if user_input == 'y'
    calculator
  elsif user_input == 'n'
    Kernel.puts("Thank you for using this calculator!")
  else
    Kernel.puts("I'm sorry, I do not understand")
  end
end

calculator
