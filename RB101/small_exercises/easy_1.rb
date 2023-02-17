#1
def repeat(str, num)
  num.times {puts str}
end

#repeat("Hello",3)

#2
def is_odd?(num)
  num.remainder(2) != 0
end

#3
def digit_list(num)
  num.to_s.chars.map(&:to_i)
end

#4
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  count = Hash.new(0)
  vehicles.each{ |vehicle, counter| count[vehicle] += 1 }
  puts count
end

#count_occurrences(vehicles)

#5
def reverse_sentence(str)
  str.split(" ").reverse.join(" ")
end

#6
def reverse_words(str)
  str.reverse if str.length >= 5
end

#7
def stringy(req, optional = 1)
  arr = []
  req.times do |i|
    if optional == 0 
      some_num = i.odd? ? 1 : 0
      arr << some_num
    else
      some_num = i.even? ? 1 : 0
      arr << some_num
    end
  end
  arr.join
end

#8
def average(array)
  array.sum.to_f / array.size
end

#9
def sum(num)
  num.to_s.chars.map(&:to_i).sum
end

#10
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

#NEW EASY 1

#5
def print_in_box(str)
  extra = ''
  space = ''
  str.length.times{|x|
   extra += "-"
   space += " "
  }
  p "+-#{extra}-+"
  p "| #{space} |"
  p "| #{str} |"
  p "| #{space} |"
  p "+-#{extra}-+"
end

#print_in_box('')

#print_in_box('To boldly go where no one has gone before.')

#6

def triangle(num)
  (1..num).each{|x|
    output = "*" * x
    puts output.rjust(num)
  }
end

#triangle(5)
#triangle(9)

#7

def mad_lib()
  puts "Enter a noun:"
  noun = gets.chomp
  puts "Enter a verb:"
  verb = gets.chomp
  puts "Enter an adjective:"
  adjective = gets.chomp
  puts "Enter an adverb:"
  adverb = gets.chomp
  
  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}?/
  That's hilarious!"
end


#mad_lib

#8
def reversed_number(num)
  arr = num.to_s.chars
  arr_size = arr.size
  new_arr = []
  (0..arr_size).reverse_each{|x|
    new_arr.append(arr[x])
  }
  return new_arr.join.to_i
end

=begin
p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
=end

#9
def center_of(str)
  center = str.length/2
  if str.length % 2 == 0
    return [str[center-1], str[center]].join
  else
    return str[center]
  end
end

=begin
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
=end