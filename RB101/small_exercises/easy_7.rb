#1
def interleave(arr_1,arr_2)
  arr_size = arr_1.size
  final_arr = []
  
  arr_size.times {|x|
    final_arr.append(arr_1[x])
    final_arr.append(arr_2[x])
  }
  return final_arr
end

#puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

#2 

def is_upcase?(char)
  char.upcase == char
end

def is_downcase?(char)
  char.downcase == char
end

def letter_case_count(str)
  arr = str.chars
  arr_size = arr.size
  final_result = {
    :lowercase => 0,
    :uppercase => 0,
    :neither => 0,
  }
  arr_size.times{|x|
    if is_downcase?(arr[x]) && is_upcase?(arr[x]) == true
      final_result[:neither] += 1
    elsif is_upcase?(arr[x])
      final_result[:uppercase] += 1
    else
      final_result[:lowercase] += 1
    end
  }
  return final_result 
end

=begin
puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
=end

#3
def word_cap(str)
  arr = str.split
  arr_size = arr.size
  arr_size.times {|x|
    arr[x] = arr[x].downcase
    arr[x][0] = arr[x][0].upcase
  }
  return arr.join(" ")
end

=begin
puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
=end

#4
def swapcase(str)
  char_arr = str.chars
  char_arr_size = char_arr.size
  char_arr_size.times {|x|
    if is_upcase?(char_arr[x])
      char_arr[x] = char_arr[x].downcase
    else
      char_arr[x] = char_arr[x].upcase
    end
  }
  return char_arr.join
end

#puts swapcase('CamelCase') == 'cAMELcASE'
#puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

#5
=begin
def staggered_case(str)
  char_arr = str.chars
  char_arr_size = char_arr.size
  char_arr_size.times{|x|
    if x % 2 == 0
      char_arr[x] = char_arr[x].upcase
    else
      char_arr[x] = char_arr[x].downcase
    end
  }
  return char_arr.join
end

#puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
#puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
#puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
=end
#6

def staggered_case(str)
  char_arr = str.chars
  char_arr_size = char_arr.size
  count = 0
  char_arr_size.times{|x|
  if is_downcase?(char_arr[x]) != is_upcase?(char_arr[x])
    if count % 2 == 0
      char_arr[x] = char_arr[x].upcase
    else 
      char_arr[x] = char_arr[x].downcase
    end
    count += 1
  end
  }
  return char_arr.join
end

#puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
#puts staggered_case('ALL CAPS') == 'AlL cApS'
#puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

#7
def show_multiplicative_average(arr)
  arr_size = arr.size
  multiplied = arr.inject(:*)
  divided = multiplied.fdiv(arr_size)
  return "%.3f" % divided
end

#puts show_multiplicative_average([3, 5])                # => The result is 7.500
#puts show_multiplicative_average([6])                   # => The result is 6.000
#puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

#8
def multiply_list(arr_1,arr_2)
  arr_size = arr_1.size
  result_array = []
  arr_size.times{|x|
    multiplied = arr_1[x] * arr_2[x]
    result_array.append(multiplied)
  }
  return result_array
end

#puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

#9
def multiply_all_pairs(arr_1,arr_2)
  arr_1_size = arr_1.size
  arr_2_size = arr_2.size
  result_array = []
  arr_1_size.times{|x|
    arr_2_size.times{|y|
      product = arr_1[x] * arr_2[y]
      result_array.append(product)
    }
  }
  return result_array.sort!
end

# multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

#10
def penultimate(str)
  arr = str.split
  arr_size = arr.size
  return arr[arr_size-2]
end

#puts penultimate('last word') == 'last'
#puts penultimate('Launch School is great!') == 'is'

#11
def count_occurrences(arr)
  hash = {}
  arr_uniq = arr.uniq
  arr_uniq.each{|x|
    hash[x] = 0
  }
  arr.each{|x|
    hash[x] += 1 
  }
  return hash
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

#puts count_occurrences(vehicles)
