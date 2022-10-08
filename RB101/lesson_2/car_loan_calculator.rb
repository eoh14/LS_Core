=begin
1) get loan amount, APR (%) and loan duration
2) validate above numbers. make sure float is ok
3) calculate monthly interest rate, loan duration in months, monthly payment.

=end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def convert_num(num)
  num = num.to_f
end

def mortgage_calculator
  # loan amount
  puts "Please enter the loan amount:"
  loan_amount = gets.chomp
  if valid_number?(loan_amount)
    loan_amount = convert_num(loan_amount)
  else
    puts "Invalid number. Please try again."
    mortgage_calculator
  end
  # APR
  puts "Please enter the Annual Percentage Rate (APR in %):"
  annual_percentage_rate = gets.chomp
  if valid_number?(annual_percentage_rate)
    annual_percentage_rate = convert_num(annual_percentage_rate)
  else
    puts "Invalid number. Please try again."
    mortgage_calculator
  end
  # loan duration
  puts "Please enter the loan duration (months):"
  loan_duration = gets.chomp
  if valid_number?(loan_duration)
    loan_duration = convert_num(loan_duration)
  else
    puts "Invalid number. Please try again."
    mortgage_calculator
  end
  # find monthly rate from APR
  monthly_interest_rate = annual_percentage_rate.to_f / 1200
  # calculate
  monthly_payment = loan_amount * monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration))
  puts "Your monthly payment is $#{monthly_payment.round(2)}."
end

mortgage_calculator
