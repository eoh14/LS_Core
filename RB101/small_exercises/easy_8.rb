#1

def sum_of_sums(arr)
  arr_size = arr.size
  value = 0
  arr_size.times{|x|
    value += arr[x] * (arr_size - x)
  }
  return value
end


=begin
puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
=end

def leading_substrings(str)
  arr = str.chars
  arr_size = arr.size
  final_arr = []
  arr_size.times{|x|
    final_arr.append(arr.join())
    arr.pop
  }
  return final_arr.sort
end

=begin
puts leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
=end

#2
def substrings(str)
  arr = str.chars
  count = 0
  arr_size = arr.size
  final_arr = []
  arr_size.times{|_|
    arr_size.times{|x|
      final_arr.append(arr.join())
      arr.pop
    }
    count += 1
    arr = str.chars
    arr.shift(count)
    arr_size = arr.size
  }
  final_arr.sort
end

=begin
puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
=end

#3
def equivalent_checker?(str)
  str_len = str.length
  str[0] == str[-1]
end

def palindromes(str)
  arr = substrings(str)
  possibilities = []
  final = []
  arr_size = arr.size
  arr_size.times {|x|
    if arr[x].size > 1 && equivalent_checker?(arr[x]) == true
      possibilities.append(arr[x])
    end
  }
      arr_size = possibilities.size
    arr_size.times {|y|
      if possibilities[y].size == 2
        final.append(possibilities[y])
      else
        chars = possibilities[y].chars
        chars.pop
        chars.shift
        arr_size = chars.size
        if equivalent_checker?(chars.join) == true
          chars.pop
          chars.shift
          if equivalent_checker?(chars.join) == true
            final.append(possibilities[y])
          end
        end
      end
      }

  if final.size > 1
    return final
  else
    return final
  end
end

=begin
puts palindromes('abcd') == []
puts palindromes('madam').sort == ['madam', 'ada'].sort


puts palindromes('hello-madam-did-madam-goodbye').sort == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
].sort

puts palindromes('knitting cassettes').sort == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
].sort

puts palindromes('knitting cassettes').sort == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
].sort

=end

#4
def fizzbuzz(num_1,num_2)
  arr = []
  (num_1..num_2).each{|x|
    if x % 3 == 0 || x % 5 == 0
      if x % 3 == 0 && x % 5 == 0
        arr.append("FizzBuzz")
      elsif x % 3 == 0
        arr.append("Fizz")
      else
        arr.append("Buzz")
      end
    else
      arr.append(x)
    end
  }
  return arr
end


#p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

#5
def repeater(str)
  arr = str.chars
  arr_2 = []
  arr.each{|x|
    arr_2.append(x)
    arr_2.append(x)
  }
  return arr_2.join
end

#puts repeater('Hello') == "HHeelllloo"
#puts repeater("Good job!") == "GGoooodd  jjoobb!!"
#puts repeater('') == ''

#6
def alphabet?(char)
  char.upcase != char.downcase
end

def consonant?(char)
  case char.downcase
  when "a" then false
  when "e" then false
  when "i" then false
  when "o" then false
  when "u" then false
  else
    true
  end
end


def double_consonants(str)
  arr = str.chars
  arr_2 = []
  arr.each{|x|
    if consonant?(x) && alphabet?(x)
      arr_2.append(x)
      arr_2.append(x)
    else
      arr_2.append(x)
    end
  }
  return arr_2.join
end

=begin
puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
=end

#7
def reverse_sentence(str)
  arr = str.split
  arr_size = arr.size
  arr_new = []
  (0..(arr_size-1)).reverse_each{|x|
    arr_new.append(arr[x])
  }
  return arr_new.join(" ")
end

=begin
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
=end

#8
def reverse_words(str)
  str_arr = str.split
  str_size = str_arr.size
  new_word = []
  pre_word = []
  str_size.times{|x|
    chars = str_arr[x].chars
    chars_size = chars.size
    if chars_size >= 5
      (0..chars_size-1).reverse_each{|y|
      pre_word.append(chars[y])
      }
     new_word.append(pre_word.join)
     pre_word = []
    else
      new_word.append(str_arr[x])
    end
  }
  return new_word.join(" ")
  
end

=begin
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
=end

#9
def average(arr)
  arr_size = arr.size
  value = 0
  arr_size.times {|x|
    value += arr[x] 
  }
  value/arr_size
end

=begin
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
=end