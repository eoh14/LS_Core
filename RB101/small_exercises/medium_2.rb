#1

def longest_sentence(file_path)
  str = File.read(file_path)
  sentences = str.split(/\.|\?|!/)
  longest_sentence = ""
  longest_sentence_length = 0
  arr = [sentences[0].split.count]

  sentences.each {|sentence|
    if sentence.split.count > longest_sentence_length
      longest_sentence_length = sentence.split.count
      longest_sentence = sentence.strip
    end 
  }
  
  puts "The longest sentence is: #{longest_sentence}"
  puts "Number of words: #{longest_sentence_length}"
end

file_path = "pg84.txt" # Replace with the actual file path
longest_sentence(file_path)

#2
=begin
def block_word?(str)
  alpha_set = [["B","O"],["G","T"],["V","I"],["X","K"],["R","E"],["L","Y"]\
,["D","Q"],["F","S"],["Z","M"],["C","P"],["J","W"],["N","A"],["H","U"]]
  
  letter = str.upcase.chars
  left = []
  right = []
  alpha_set.count.times{|x|
    left.push(alpha_set[x][0])
    right.push(alpha_set[x][1])
  }
  
  compare_left = []
  compare_right = []
  letter.each{|x|
    if left.include?(x)
      compare_left.push(left.index(x))
    end
    
    if right.include?(x)
      compare_right.push(right.index(x))
    end
    
  }
  
  compare_right.each{|x|
    if compare_left.include?(x) == true
      return false
    end
  }
  return true
end

p block_word?('BATCH') 
p block_word?('BUTCH') 
p block_word?('jest') 

=end

#3

=begin
def letter_percentages(str)
  str_len = str.length
  lower_letters = str.count('a-z')
  upper_letters = str.count('A-Z')
  non_letters = str_len - lower_letters - upper_letters
  
  percent_lower = lower_letters.to_f / str_len * 100
  percent_upper = upper_letters.to_f / str_len * 100
  percent_non = non_letters.to_f / str_len * 100
  
  { lowercase: percent_lower , uppercase: percent_upper , neither: percent_non }
end



p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

=end

#4
=begin
def balanced?(str)
  arr = []
  str.each_char {|x|
  if x == "("
    arr << "("
  elsif x == ")"
    return false if arr.empty? || arr.pop != "("
  end
  }
  arr.empty?
end


def balanced?(str)
  balance = 0
  str.each_char do |char|
    if char == '('
      balance += 1
    elsif char == ')'
      balance -= 1
      return false if balance < 0
    end
  end
  balance.zero?
end




p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

=end

#5
=begin
def triangle(x,y,z)
  largest = [x,y,z].max
  sum_two = [x,y,z].sum - largest
  
  if x == y && x == z
    return :equilateral
  elsif sum_two > largest
    if [x,y,z].uniq.size == 2 
      return :isosceles
    else
      return :scalene
    end
  else
    return :invalid
  end
  
end

=begin
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
=end

#6
=begin
def triangle(x,y,z)
  if x + y + z == 180 && [x,y,z].include?(0) == false
    if [x,y,z].include?(90)
      return :right
    elsif [x,y,z].max > 90
      return :obtuse
    else
      return :acute
    end
  else
    return :invalid
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

=end

#7

=begin
def friday_13th(year)
  require 'date'
  count = 0
  (1..12).each{|month|
    if Date.new(year,month,13).friday? == true
      count += 1
    end
  }
  return count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
=end

#8
=begin
def featured(num)
  #break if this condition
  loop do
    num += 1
    if num > 10_999_999_99
      return "no featured number"
    end
    break if num.odd? == true && num % 7 == 0 && num.to_s.chars.uniq.size == num.to_s.chars.size 
  end
  return num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
=end

#9
=begin
def bubble_sort!(array)
  array.count.times {
    (1..array.count-1).each{|x|
      if array[x-1] > array[x]
         array[x-1], array[x] = array[x], array[x-1]
      else 
        next
      end
    }
  }
  return array
end


array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
=end

#10
=begin
def sum_square_difference(num)
  arr = (1..num).to_a
  add = 0
  square = 0
  arr.each {|x|
    add += x 
    square += x**2
  }
  result = add**2 - square
  #p result
  return result
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
=end