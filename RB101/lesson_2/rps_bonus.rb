=begin
1) user makes a choice
  -> gets & chomp
2) computer makes a choice
  -> .sample method
3) compare the two, case statements
  a) rock(1), paper(2) = paper(2) wins
  b) rock(1), lizard(3) = rock(1) wins
  b) lizard(3), spock(4) = lizard(3) wins
  d) spock(4), scissors(5) = spock(4) wins
  e) scissors(5), paper(2) = scissors(5) wins
  f) scissors(5), rock(1) = rock(1) wins
  g) scissors(5), lizard(3) = scissors (5) wins
  h) spock(4), paper(2) = paper(2) wins
  i) spock(4),rock(1) = spock(4) wins
  j) lizard(3), paper(2) = lizard(3) wins
4) winner is displayed
=end

def validate_str?(str)
  user_options = %w[r p l sp s]
  user_options.include?(str)
end

def convert_to_number(str)
  user_options = %w[r p l sp s]
  user_options.index(str) + 1
end

def winning_message(computer_num, some_num_1, some_num_2, user_num)
  options_array = %w[Rock Paper Lizard Spock Scissors]
  puts "Results: #{options_array[user_num - 1]} (you) vs. #{options_array[computer_num - 1]} (computer)."
  if computer_num == some_num_1 || computer_num == some_num_2
    puts "You win!"
  elsif computer_num == user_num
    puts "Tie! Let's battle it off again."
    rock_paper_scissors
  else
    puts "Sorry, you lost..."
  end
end

def winning_counter(computer_num, some_num_1, some_num_2, user_num)
  options_array = %w[Rock Paper Lizard Spock Scissors]
  puts "Results: #{options_array[user_num - 1]} (you) vs. #{options_array[computer_num - 1]} (computer)."
  if computer_num == some_num_1 || computer_num == some_num_2
    [1, 0] 
  elsif computer_num == user_num
    [0, 0] 
  else 
    [0, 1] 
  end
end

def rock_paper_scissors
  
  counter = [0, 0]
  
  until counter.include?(3)
    # user input
    puts <<-OPTIONS
    Select the following:
    1) r = Rock 
    2) p = Paper
    3) l = Lizard
    4) sp = Spock
    5) s = Scissors
    OPTIONS
    
    user_input = gets.chomp
    user_num = nil
    
    if validate_str?(user_input)
      user_num = convert_to_number(user_input)
    else
      puts "Sorry, invalid option, please try again..."
      rock_paper_scissors
      return
    end
    
    # computer choice
    computer_input = [1, 2, 3, 4, 5].sample
    
    case user_num
    
    when computer_input
      winning_message(computer_input, 7, 7, user_num)
      return
    when 1
      winning_message(computer_input, 3, 5, user_num)
      score = winning_counter(computer_input, 3, 5, user_num)
      score.each_index { |i| counter[i] += score[i] }
    when 2 
      winning_message(computer_input, 1, 4, user_num)
      score = winning_counter(computer_input, 1, 4, user_num)
      score.each_index { |i| counter[i] += score[i] }
    when 3
      winning_message(computer_input, 4, 2, user_num)
      score = winning_counter(computer_input, 4, 2, user_num)
      score.each_index { |i| counter[i] += score[i] }
    when 4
      winning_message(computer_input, 5, 1, user_num)
      score = winning_counter(computer_input, 5, 1, user_num)
      score.each_index { |i| counter[i] += score[i] }
    when 5 
      winning_message(computer_input, 2, 3, user_num)
      score = winning_counter(computer_input, 2, 3, user_num)
      score.each_index { |i| counter[i] += score[i] }
    end
  end
  u, c = counter
  puts "END OF GAME"
  puts "The score is #{u} (you) vs. #{c} (computer)."
  
  if u > c
    puts "YOU ARE THE GRAND WINNER! CONGRATS!!!"
  else
    puts "Sorry... You lost to a computer..."
  end
end

#rock_paper_scissors

def name
  "George"
end

loop do
  puts name
  break
end
