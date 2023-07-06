#1

def rotate_array(arr_1)
  arr_2 = []
  arr_1.each {|x|
    arr_2.append(x)
  }
  arr_2.append(arr_2.shift)
end

=begin
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
=end

#2

def rotate_rightmost_digits(num_1,n)
  arr = num_1.to_s.chars
  new_arr = []
  arr_size = arr.size
  value = 0
  arr_size.times{|x|
    if arr[x] != arr[-n]
      new_arr.append(arr[x])
    else 
      value = arr[x]
    end
  }
  new_arr.append(value)
  return new_arr.join.to_i
end

=begin
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
=end

#3
def arr_rotate(arr,n)
  new_arr = []
  arr_size = arr.size
  value = "r"
  arr_size.times{|x|
    if arr[x] != arr[-n]
      new_arr.append(arr[x])
    else 
      value = arr[x]
    end
  }
  new_arr.append(value)
  return new_arr
end

def max_rotation(num)
    arr = num.to_s.chars
    arr_size = arr.size
    count = 0
    fixed_num = []
    if arr_size == 1
      return num
    end
    (arr_size - 1).times{|x|
      n = arr_size
      rotating = (arr_rotate(arr,n - count))
      fixed_num.append(rotating[0])
      rotating.shift
      arr = rotating
      count += 1
      if x == arr_size - 2
        rotating_size = rotating.size
        rotating_size.times{|x|
          fixed_num.append(rotating[x])
        }
      end
    }
    
    fixed_num.size.times{|y|
      if fixed_num[-1] == "0" 
        fixed_num.pop
      end
    }
    
    if fixed_num.size != arr_size
      return rotate_rightmost_digits(fixed_num.join.to_i,fixed_num.size)
    else
      return fixed_num.join.to_i
    end
end

=begin
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
=end

#4
def lights(n)
  arr = Array.new(n,false)
  lights_on = []
  count = 0
  (1..n).each{|x|
    n.times{|z|
      if (z + 1) % x == 0
        arr[z] = !arr[z]
      end
    }
    count += 1
  }
  n.times{|y|
    if arr[y] == true
      lights_on.append(y + 1)
    end
  }
  
  return lights_on
end

#p lights(10)

#5
=begin
def diamond(num)
  count = 1
  middle = (num + 1)/2
  (1..num).each{|x|
    if x % 2 != 0
      puts ("*" * x).center(num)
    end
  }
  (1..num-1).reverse_each{|x|
    if x % 2 != 0
      puts ("*" * x).center(num)
    end
  }

end
=end

#diamond(9)

#6


def minilang(str)
  arr = str.split
  register = 0
  stack = []
  arr.each{|x|
    if command?(x)
      case x
      when "PRINT" then puts register
      when "PUSH" then stack.append(register)
      when "ADD" then register += stack.pop
      when "MULT" then register *= stack.pop
      when "DIV" then register /= stack.pop
      when "MOD" then register %= stack.pop
      when "POP" then register = stack.pop
      when "SUB" then register -= stack.pop
      end
    else 
      register = x.to_i
    end
  }
  return register
end

=begin
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12


minilang('-3 PUSH 5 SUB PRINT')
# 8


#minilang('6 PUSH')
# (nothing printed; no PRINT commands)
=end

#7
def letter?(word)
  word.upcase != word.downcase
end

def word_to_digit(str)
  str.gsub!("one","1")
  str.gsub!("two","2")
  str.gsub!("three","3")
  str.gsub!("four","4")
  str.gsub!("five","5")
  str.gsub!("six","6")
  str.gsub!("seven","7")
  str.gsub!("eight","8")
  str.gsub!("nine","9")
  return str
end

#p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

#8


def fibonacci(num)
  if num == 2 || num == 1
    return 1
  end
  fibonacci(num - 1) + fibonacci(num - 2)
end

=begin
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
=end

#7

def fibonacci_1(num)
  arr = []
  num.times{|x|
    if x == 0 || x == 1
      arr.append(1)
    else
      sum = arr[x - 1] + arr[x - 2]
      arr.append(sum)
    end
  }
  return arr[-1]
end

=begin
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
=end

#8
def fibonacci_last(num)
  num = fibonacci_1(num).to_s.chars[-1].to_i
  return num
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4