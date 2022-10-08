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
    end
  end
  
  #computer choice
  options_array = ["Rock", "Paper", "Scissors"]
  computer_input = [1, 2, 3].sample
  puts "Results: #{options_array[user_input - 1]} (you) vs. #{options_array[computer_input - 1]} (computer)."

  case user_input
  
  when computer_input
    puts "Tie! Let's battle it off again."
      rock_paper_scissors
  when 1
    if computer_input == 3
      puts "You win!"
    else
      puts "Sorry, you lost..."
    end
  when 2
    if computer_input == 1
      puts "You win!"
    else
      puts "Sorry, you lost..."
    end
  when 3
    if computer_input == 2
      puts "You win!"
    else
      puts "Sorry, you lost..."
    end
  end
  
  i = 0
  puts "END OF GAME"
  i += 1
  puts i
  puts " "
end

rock_paper_scissors