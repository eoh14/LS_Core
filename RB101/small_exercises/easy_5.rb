#1

def ascii_value(str)
  sum = 0
  str.delete(" ")
  str.chars.each do |x| 
  sum += x.ord
  end
  return sum
end

#puts ascii_value('Four score') == 984
#puts ascii_value('Launch School') == 1251
#puts ascii_value('a') == 97
#puts ascii_value('') == 0

#puts ascii_value('Four score')


#str = "Four score"

#2
def time_of_day(num)
    if num.abs > 1440
      large_num = num % 1440
      b = large_num % 60
      a = large_num.div(60)
      hh = "%02d" % a
      mm = "%02d" % b
      return "#{hh}:#{mm}"
    elsif num < 0
      if num.abs > 60
        b =  num % 60
        a = 24 + num.div(60)
      else
        b = 60 + num
        a = 23
      end
      hh = "%02d" % a
      mm = "%02d" % b
      return "#{hh}:#{mm}"
    else
      b = num % 60
      a = num.div(60)
      hh = "%02d" % a
      mm = "%02d" % b
      return "#{hh}:#{mm}"
    end
end

=begin
puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
=end

#3
def after_midnight(str)
  a = str[0].to_i * 10
  b = str[1].to_i
  c = str[3].to_i * 10
  d = str[4].to_i
  hh = a + b
  mm = c + d
  hh_to_mins = hh * 60
  mins_total = hh_to_mins + mm
  if mins_total == 1440
    return 0
  else
    return mins_total
  end
end

def before_midnight(str)
  a = str[0].to_i * 10
  b = str[1].to_i
  c = str[3].to_i * 10
  d = str[4].to_i
  hh = a + b
  mm = c + d
  hh_to_mins = hh * 60
  mins_total = hh_to_mins + mm
  if mins_total == 0
    return 0
  else
    return 1440 - mins_total
  end
end

=begin
puts "Q3"
puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
=end


#4
def swap(str)
  arr = str.split
  arr_count = arr.size
  first_letters = []
  end_letters = []
  new_letters = []
  new_arr = []
  last_indices = []
  first_indices = 
  arr_count.times {|x|
    last_index = arr[x].size - 1
    last_indices.append(last_index)
    end_letters.append(arr[x][last_index])
    first_letters.append(arr[x][0])
  }
  arr_count.times {|y|
    arr[y][0] = end_letters[y]
    arr[y][last_indices[y]] = first_letters[y]
  }
  return arr.join(" ")
end

#puts "Q4"
#puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
#puts swap('Abcde') == 'ebcdA'
#puts swap('a') == 'a'

#5
def alpha?(char)
  char.upcase != char.downcase
end

def cleanup(str)
  final_str = [str[0]]
  str_size = str.size
  (1..str_size).each {|x|
    if str[x] != str[x-1]
      final_str.append(str[x])
    end
  }
  str_again = final_str.join()
  return str_again.gsub(/\W+/, ' ')
  
end

#puts cleanup("---what's my +*& line?") == ' what s my line '

#6
=begin
def word_sizes(str)
  str_arr = str.split
  arr_size = str_arr.size
  counts = Hash.new(0)
  sizes = []
  arr_size.times {|x|
    n = str_arr[x].size
    if n > 1
      sizes.append(n)
    end
  }
  sizes.each{|y|
        counts[y] += 1
  }
  return counts
end
=end

#puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
#puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
#puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
#puts word_sizes('') == {}

#7
def word_sizes(str)
  str.gsub!(/\W+/, ' ')
  str_arr = str.split
  arr_size = str_arr.size
  counts = Hash.new(0)
  pre_size = []
  sizes = []
  arr_size.times {|x|
    n = str_arr[x].size
    if n == 1
      pre_size[x-1] += 1
    elsif n > 1
      pre_size.append(n)
    end
  }
  m = pre_size.size
  m.times {|z|
    if pre_size[z] > 1
      sizes.append(pre_size[z])
    end
  }
  sizes.each{|y|
        counts[y] += 1
  }
  return counts
end

#puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
#puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
#puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
#puts word_sizes('') == {}

#8

def alphabetic_number_sort(arr)
  alpha_arr = %w(zero one two three four five six seven eight nine ten eleven twleve\
  thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  new_arr = []
  final_arr = []
  reference = {
    0 => alpha_arr[0],
    1 => alpha_arr[1],
    2 => alpha_arr[2],
    3 => alpha_arr[3],
    4 => alpha_arr[4],
    5 => alpha_arr[5],
    6 => alpha_arr[6],
    7 => alpha_arr[7],
    8 => alpha_arr[8],
    9 => alpha_arr[9],
    10 => alpha_arr[10],
    11 => alpha_arr[11],
    12 => alpha_arr[12],
    13 => alpha_arr[13],
    14 => alpha_arr[14],
    15 => alpha_arr[15],
    16 => alpha_arr[16],
    17 => alpha_arr[17],
    18 => alpha_arr[18],
    19 => alpha_arr[19]
  }
  reversed_reference = reference.invert
  arr.size.times {|x|
    new_arr.append(reference[arr[x]])
  }
  new_arr.sort!
  new_arr.size.times{|y|
    final_arr.append(reversed_reference[new_arr[y]])
  }
  return final_arr
end

=begin
puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
=end

#9
def crunch(str)
  str_size = str.size
  final_str = [str[0]]
  (1..str_size).each {|x|
    if str[x] != str[x-1]
      final_str.append(str[x])
    end
  }
  return final_str.join
  
end
=begin
puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
=end

#10
#same object because .reverse! is a destructive method.

#11
def digit_list(num)
  str = num.to_s
  str_arr = str.chars
  return str_arr.map(&:to_i)
end

=begin
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
=end