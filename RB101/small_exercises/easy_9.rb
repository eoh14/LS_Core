#1
def greetings(arr,hash)
  
  return "Hello, #{arr[0]} #{arr[1]} #{arr[2]}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

#puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."

#2
def twice(num)
  arr = num.to_s.chars
  arr_size = arr.size
  front_arr = []
  back_arr = []
  new_num = []
  if arr_size % 2 == 0
    arr_size.times{|x|
      if x + 1 > (arr_size/2)
        back_arr.append(arr[x])
      else
        front_arr.append(arr[x])
      end
    }
    if front_arr.join == back_arr.join
      return num
    else 
      return num * 2
    end
  else 
    return num * 2
  end
end

=begin
puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
=end

#3
def sequence(num)
  arr = []
  (1..num).each{|x|
    arr.append(x)
  }
  return arr
end

=begin
puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
=end

#4
def word_lengths(str)
  words = str.split
  words_size = words.size
  return_arr = []
  words_size.times{|x|
    return_arr.append("#{words[x]} #{words[x].size}")
  }
  return return_arr
end

=begin
p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
=end

#5
def swap_name(str)
  arr = str.split
  return "#{arr[1]}, #{arr[0]}"
end

#p swap_name('Joe Roberts') == 'Roberts, Joe'

#6
def sequence(count, start)
  if count > 0 
    arr = [start]
    (1..count-1).each{|x|
      value = arr[x-1] + arr[0]
      arr.append(value)
    }
    return arr
  else
    return []
  end
end

=begin
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
=end


#6
def get_grade(num_1,num_2,num_3)
  arr = [num_1,num_2,num_3]
  x = arr.sum/3
  case x
  when (90..100) then "A"
  when (80..89) then "B"
  when (70..79) then "C"
  when (60..69) then "D"
  when (0..59) then "F"
  end
end

#p get_grade(95, 90, 93) == "A"
#p get_grade(50, 50, 95) == "D"

#7
def buy_fruit(arr)
  final_list = []
  arr_size = arr.size
  arr_size.times{|x|
    arr[x][1].times{|y|
    final_list.append(arr[x][0])
    }
  }
  return final_list
end

=begin
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
=end

#8

def anagram(arr)
  arr_size = arr.size
  sorted = []
  anagram = []
  sub_anagram = []
  arr_size.times{|x|
    sorted.append(arr[x].chars.sort.join)
  }
  arr_size.times{|y|
    arr_size.times{|z|
      if sorted[y] == sorted[z]
        sub_anagram.append(arr[z])
      end
    }
    anagram.append(sub_anagram.uniq)
    sub_anagram =[]
  }
  return anagram.uniq
end


words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
#p anagram(words)

#9
def sum(num)
  arr = num.to_s.chars
  sum = 0
  arr.each{|x|
    sum += x.to_i
  }
  return sum
end

def sum_2(num)
  sum = num.to_s.chars.map(&:to_i).sum
  return sum
end

=begin
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
=end

#10

def oddities(arr)
  arr_size = arr.size
  return_arr = []
  arr_size.times{|x|
    if x % 2 == 0
      return_arr.append(arr[x])
    end
  }
  return return_arr
end

=begin
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
=end
