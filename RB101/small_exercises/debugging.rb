#1
def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  #puts counter
  counter = decrease(counter) #decrease is not a destructive function,
  #so counter needs to be redefined each time.
end

#puts 'LAUNCH!'

#2

def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join

#  puts 'HEY ' + name
end

shout_out_to('you') #the method applied was destructive to each character,
#not the variable 'name; itself? no idea actually. not sure why
#taking away the destructive ! makes it go back to lowercase.

#3

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end

=begin
p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false
=end

#4
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []
  i = 0
  while i < words.length
    reversed_words[i] = words[words.length-i-1]
    i += 1
  end

  reversed_words.join(' ')
end

#p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

#5

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end


# Determine the score of the remaining cards in the deck
def reduce_sum(array)
  new_arr = []
  array.count.times {|x|
    if array[x].class == Integer
      new_arr.append(array[x])
    else
      new_arr.append(score(array[x]))
    end
  }
  new_arr.reduce(0) { |sum, num| sum += num }
end

#puts reduce_sum(player_cards)

#6
def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
