#Sample problems


#The study guide provides examples of types of problems you should be able to solve. The first two listed here are a little bit easier than what you might see on the assessment, but the fibonacci one is the exact level of complexity you should prepare for.

#1
#Reverse an array without using the built-in reverse method.
=begin
def reverse_array(arr)
  new_arr = []
  (0...arr.size).reverse_each {|x|
    new_arr << arr[x]
  }
  new_arr
end
=end
#p reverse_array([1, 2, 3, 4]) 
#p reverse_array([1, 2, 3, 4, 5]) == [5, 4, 3, 2, 1]
#p reverse_array!([1, 2, 3, 4, 5]) == [5, 4, 3, 2, 1] # mutating - just for fun
#p reverse_array!([1, 2, 3, 4]) == [4, 3, 2, 1] # mutating - just for fun

=begin


Write a method to determine if a word is a palindrome, without using the reverse method.

p palindrome?("hello") == false
p palindrome?("Wow") == false
p palindrome?("wow") == true

Select the element out of the array if its index is a fibonacci number.
p fib_index_select([1, 2, 3, 4, 5, 6]) 
p fib_index_select(('a'..'z').to_a) 



Problems from the Assessment prep videos

Part 4
Problem 1
# Reverse a string, without using String#reverse
p string_reverser('hello') == ‘olleh’
p string_reverser('Launch School') == ‘loohcS hcnuaL’

Problem 2
# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


Problem 3
PRODUCTS = [
  { name: "Thinkpad x210", price: 220},
  { name: "Thinkpad x230", price: 250},
  { name: "Thinkpad x250", price: 979},
  { name: "Thinkpad x230", price: 300},
  { name: "Thinkpad x230", price: 330},
  { name: "Thinkpad x230", price: 350},
  { name: "Thinkpad x240", price: 700},
  { name: "Macbook Leopard", price: 300},
  { name: "Macbook Air", price: 700},
  { name: "Macbook Pro", price: 600},
  { name: "Macbook", price: 1449},
  { name: "Dell Latitude", price: 200},
  { name: "Dell Latitude", price: 650},
  { name: "Dell Inspiron", price: 300},
  { name: "Dell Inspiron", price: 450}
]

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

def search(query)
  # implementation goes here
end

search(query)
# => [ { name: "Thinkpad x220", price: 250} ]

search(query2)
#  => [ { name: "Dell Inspiron", price: 300}, { name: "Dell Inspiron", price 450} ]


Part 5
Problem 1
# Write a method that takes an array of strings and returns an array of the same string values, except with the vowels removed.
p remove_vowels(['green', 'yellow', 'black', 'white']) == ['grn', 'yllw', 'blck', 'wht']
Problem 2
# Write a method that takes a string and returns a boolean indicating if this string has a balanced set of parentheses.
p balancer("(hi") == false
p balancer("(hi)") == true
p balancer("(()) hi") == true
p balancer(")(") == false

Problem 3:
# Write a method that takes two numbers. Return an array containing all primes between the two numbers (include the two given numbers in your answer if they are prime). Don't use Ruby's 'prime' class.
p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2) == [2]  *Please note that in the video, Conrad’s solution to this test case includes the integer 1, but it should only include the integer 2 because 1 is not a prime number. Thanks to Christian L. for this disclaimer.



Part 6 (Notes)
- use p instead of puts to get a visual on the output when debugging
- pay attention to return value
- methods should do only one thing: return something or output something. Keep at same level.
- consistent name scheme: methods should be verbs. if it has output, indicate what that output is(print_names). - Are you keeping track of return value or not? (retrieve_names vs. print_names). If mutating, use bang symbol.



Watch Others Code
Part 1
# Write a method that will determine whether an integer is a prime. Do not use the Prime class.
p is_prime?(3) == true
p is_prime?(4) == false

# Write a method that will take an array of methods and only return those that are prime. 
p select_primes([1, 2, 3, 4]) == [2, 3]
p select_primes([4, 6, 8, 10])

# Write a method that will take an array of numbers and return the number of primes in the array.
p count_primes([1, 2, 3, 4]) == 2
p count_primes([4, 6, 8, 10]) == 0

# Write a program that asks the user to enter an integer greater than zero, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Write a method that combines two Arrays passed in as arguments and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation. 
# You may assume that both input Arrays are non-empty and that they have the same number of elements.
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, "a", 2, "b", 3, "c"]


Part 2
# Write a method that will return a substring based on specified indices.
p substring("honey", 0, 2) #== "hon"
p substring("honey", 1, 2) #== "on"
p substring("honey", 3, 9) #== "ey"
p substring("honey", 2)    #== "n"


# Write a method that finds all substrings in a string, no 1 letter words.
p substrings("band") == ['ba', 'ban', 'band', 'an', 'and', 'nd']
p substrings("world") == ['wo', 'wor', 'worl', 'world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
p substrings("ppop") == ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']

# Write a method that will return all palindromes within a string.
p palindromes('ppop') == ['pp', 'pop']

# Write a method that finds the longest substring that is a palindrome within a string.
p longest_palindrome("ppop") == 'pop'


Part 3
# Write a method that converts an english phrase into a mathematical expression, step by step.
p computer("two plus two") == 4
p computer('seven minus six') == 1
p computer('zero plus eight') == 8

# More operations:
p computer('two plus two minus three') == 1
p computer("three minus one plus five minus 4 plus six plus 10 minus 4") == 15

# Compute in order of appearance (not order of operations):
p computer("eight times four plus six divided by two minus two")  # 17, not 33
p computer('one plus four times two minus two') # 8, not 7
p computer('nine divided by three times six') # 18


# Computer using order of operations.
p computer('eight times four plus six divided by two minus two')  # 33
p computer('one plus four times two minus two') # 7
p computer('nine divided by three times six') # 18
p computer('seven plus four divided by two') # 9
p computer('seven times four plus one divided by three minus two') # 26
p computer('one plus four times three divided by two minus two')  # 5
p computer('nine divided by three times six') # 18


Part 4
# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase. You may assume that words are any sequence of non-blank characters.
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# Write a method that will generate random English math problems. The method should take a length, then return a math phrase with that many operations.
# Given:
NUMBERS = %w(zero one two three four five six seven eight nine)
OPERATORS = %w(plus minus times divided)
mathphrase(1) # => 'five minus two'  (examples)
mathphrase(2) # => 'two plus three times eight'
mathphrase(3) # => 'one divided by three plus five times zero'

# Write a program that will generate a math problem in English words of any length (random, can use the previous method).
=end

#p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"

#input: str comprised of any amount of words
#function 1: make an array of str from input
#examples: #String.split
#function 2: reverse array of str
#examples: #String.reverse
#function 3: combine elements of str arr in pairs, except odd element
#function 4: loop through 1-3 until left with one element in array
#function 5: invoke method to convert arr into str
#rules: 1) reverse each word 2) combine adjacent words in pairs 3) if odd, can be by itself
# 4) repeat 1-2 until left with one word/combined str
#output: one combined str, that has been reversed



def reverse_and_combine_text(str)
    if str.split(" ").size == 1
      return str
    else
      reversed_arr = reverse_arr(str)
      working_arr = sort_array(reversed_arr)
      
      if working_arr.size == 1
        return working_arr.join
      else
        if str.split(" ").size.even?
          3.times {|x|
          reversed_arr = reverse_arr(working_arr.join(" "))
          working_arr = sort_array(reversed_arr)
        }
        else
          6.times {|x|
            reversed_arr = reverse_arr(working_arr.join(" "))
            working_arr = sort_array(reversed_arr)
          }
        end
      end
    end
  return working_arr.join()
end
    
    
def reverse_arr(str)
  str_arr = str.split(" ")
  reversed_arr = []
  str_arr.each{|x|
    reversed_arr << x.reverse
  }
  reversed_arr 
end
    

def sort_array(arr)
    if arr.size.odd?
      last_element = arr.pop
      final_arr = combine_evens(arr)
      final_arr << last_element      
    else 
      final_arr = combine_evens(arr)
    end
    final_arr
end

def one_str(arr)
  reverse_and_combine_text(arr.join())
end

def combine_evens(arr)
  temp_arr = []
  combined_arr = []
  arr.size.times {|x|
    if x != 0 && x.odd?
      temp_arr << arr[x]
      combined_arr << temp_arr.join('')
      temp_arr = []
    else
      temp_arr << arr[x]
    end
  }
  combined_arr
end
  
=begin
p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"
=end

#Write a method that takes an array of consecutive letters as input and returns the missing letter.

#i: array of strings
def determine_missing_letter(arr)
  if arr.size < 2
    return arr
  end
#array of the alphabet
  ref_arr = ('a'..'z').to_a

#f1: make input lowercase
#e1: #String.lowercase
  input_arr = arr.map{|element| element.downcase}

#f2:compare return value of f1 w/ the reference array and find index of first and last
#e2: loop thru ref_array.index(input_element)
  indices = []
  input_arr.each{|element|
    indices << ref_arr.index(element)
  }

#f2:find intersection and return the missing letter
#e2: (reference array & input array)
  complete_arr = (ref_arr[indices[0]]..ref_arr[indices[-1]]).to_a
  
  if arr[0] == arr[0].upcase
    return (complete_arr - input_arr).join.downcase
  else
    return (complete_arr - input_arr).join.upcase
  end
#r:   
#consecutive letters
#if input is empty array, return the empty array
#output is swapcase of missing letter of input
#return string/array (depending on case)

#o: string, or original array if non-consecutive worthy
end

=begin
p determine_missing_letter(['a','b','c','d','f']) == 'E' 
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []


=end
loop do
  a = 1

  loop do
    b = 2

    loop do
      c = 3
      a = b
      b = c
      c = 4

      arr = [a, b, c]
      puts arr
      break
    end

    break
  end

  puts arr
  break
end