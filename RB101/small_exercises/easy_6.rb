#1
def dms(float)
  if float % 60 == 0
    degree, minutes, seconds = [ 0, "%02d" % 0,"%02d" % 0]
  else
    degree = float.to_i
    pre_minutes = ((float - degree) * 60).round(2)
    minutes = pre_minutes.to_i
    pre_seconds = (pre_minutes - minutes) * 60
    seconds = pre_seconds.round.to_i
    degree = "%02d" % degree
    minutes = "%02d" % minutes
    seconds = "%02d" % seconds
  end
  return %(#{degree}°#{minutes}'#{seconds}")
end

=begin
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
=end

#2
def remove_vowels(arr)
  arr_size = arr.size
  vowels = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
  return_arr = []
  arr_size.times{|x|
    word = arr[x]
    vowels_size = vowels.size
    vowels_size.times{|y|
      new_word = word.delete(vowels[y])
      word = new_word
      if y == vowels_size - 1 
        return_arr.append(new_word)
      end
    }
  }
  return return_arr
end

=begin
puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
=end

#3
def find_fibonacci_index_by_length(num)
  arr = [1,1]
  count = 2
  index = 2
  arr_str = ["1","1"]
  while arr_str[index-1].length != num
    sum = arr[index-1] + arr[index-2]
    arr.append(sum)
    arr_str = arr.map(&:to_s)
    count += 1
    index += 1
  end
  return count
end

=begin
puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
=end

#4
def reverse!(arr) #sad can't use
    arr_size = arr.size
    if arr_size > 1
      if arr_size % 2 == 0 
        arr[3], arr[2], arr[1], arr[0] = arr[0], arr[1], arr[2], arr[3]
      else
        arr[4], arr[3], arr[2], arr[1], arr[0] = arr[0], arr[1], arr[2], arr[3], arr[4]
      end
    end
    return arr
end

=begin
list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true

list = []
puts reverse!(list) == [] # true
puts list == [] # true
=end

#5
def reverse(arr)
  arr_size = arr.size
  new_arr = []
=begin
  case arr_size
  when 3
    arr[2],arr[0] = new_arr[0], new_arr[2]
  when 4
    arr[3], arr[2], arr[1], arr[0] = new_arr[0], new_arr[1], new_arr[2], new_arr[3]
  when 5
    arr[4], arr[3], arr[2], arr[1], arr[0] = new_arr[0], new_arr[1], new_arr[2], new_arr[3], new_arr[4]
  end
=end
  if arr_size > 1
    (0..arr_size-1).reverse_each{|x|
      new_arr.append(arr[x])
    }
    return new_arr
  else
    return arr
  end
end

=begin
puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
puts new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
=end

#6
def merge(arr_1,arr_2)
  return arr_1.concat(arr_2).uniq!
end

#puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

#7
def halvsies(arr)
  arr_size = arr.size
  if arr_size > 1
    if arr_size % 2 != 0
      return arr.each_slice(3).to_a
    else
      return arr.each_slice(arr_size/2).to_a
    end
  else
    return [arr,[]]
  end  
end

=begin
puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
=end

#8
def find_dup(arr)
  return arr.sum - arr.uniq.sum
end

=begin
puts find_dup([1, 5, 3, 1]) == 1
puts find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
=end

#9
def include?(arr,value)
  arr_size = arr.size
  arr_size.times {|x|
    if arr[x] == value
      return true
    end
  }
  return false
end

=begin
puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
=end

#10
#it will put out %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo) with no
#upcase value applied to it because array1 changes happened after array2
#was given its values.