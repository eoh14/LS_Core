=begin
1) user makes a choice
  -> gets & chomp
2) computer makes a choice
  -> .sample method
3) compare the two, case statements
  #1 rock(1), paper(2) = paper(2) wins
  #2 rock(1), scissors(3) = rock(1) wins
  #3 paper(2), scissors(3) = scissors(3) wins
4) winner is displayed
=end
def validate_num?(num)
  num.to_i.to_s == num
end

def winning_message(computer_num, some_num, user_num)
  options_array = %w(Rock Paper Scissors)
  puts "Results: #{options_array[user_num - 1]} (you) vs. #{options_array[computer_num - 1]} (computer)."
  if computer_num == some_num
    puts "You win!"
  elsif
    computer_num == user_num
    puts "Tie! Let's battle it off again."
    rock_paper_scissors
  else
    puts "Sorry, you lost..."
  end
end

def rock_paper_scissors
  #user input
  puts <<-OPTIONS
  Select the following (1,2 or 3):
  1) Rock
  2) Paper
  3) Scissors
  OPTIONS
  
  user_input = gets.chomp
  if validate_num?(user_input)
    user_input = user_input.to_i
    if user_input <= 3
    else
      puts "Sorry, invalid number, please try again..."
      rock_paper_scissors
      return
    end
  end
  
  #computer choice
  computer_input = [1, 2, 3].sample
  
  case user_input
  
  when computer_input 
    winning_message(computer_input, 7, user_input)
    return
  when 1 then winning_message(computer_input, 3, user_input)
  when 2 then winning_message(computer_input, 1, user_input)
  when 3 then winning_message(computer_input, 2, user_input)
  end
  puts "END OF GAME"
  puts " "
end

rock_paper_scissors
