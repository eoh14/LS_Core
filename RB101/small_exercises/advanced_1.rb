#1
def madlibs(file_path)
  adjectives = ['quick', 'lazy', 'sleepy', 'ugly']
  nouns = ['fox', 'dog', 'head', 'leg']
  verbs = ['jumps', 'lifts', 'bites', 'licks']
  adverbs = ['easily', 'lazily', 'noisily', 'excitedly']
  text = File.read(file_path)
  

  text.each_line {|line|
    replaced_line = line.gsub("%{adjective}", adjectives.sample)
    .gsub("%{noun}", nouns.sample)
    .gsub("%{verb}", verbs.sample)
    .gsub("%{adverb}", adverbs.sample)
  puts replaced_line
  }
end

#ile_path = "madlibs.txt"

#madlibs(file_path)


#2
def star(num)
  middle = num / 2
  (-middle..middle).each {|row|
    stars = "*"

    if row == 0 
      line = stars * num
      puts "#{line}"
    elsif row == -1 || row == 1
      line = "***".center(num)
      puts "#{line}"
    else
      star_row = " " * num
      star_row[0] = "*".center(num)
      star_row[middle - row] = "*"
      star_row[middle + row] = "*"
      puts "#{star_row}"
    end
  }
end

#star(11)

#3
=begin
def transpose(matrix)
  arr = [[],[],[]]
  3.times{|x|
    arr[0].push(matrix[x][0])
    arr[1].push(matrix[x][1])
    arr[2].push(matrix[x][2])
  }
  return arr
end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

#p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
#p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
=end

#4

def transpose(matrix)
  n = matrix[0].size
  m = matrix.size

  arr = Array.new(n) { Array.new(m) }
  temp_arr = []
  n.times{|x|
    m.times{|y|
    temp_arr.push(matrix[y][x])
    }
    arr[x] = temp_arr
    temp_arr = []
  }
  return arr
end

=begin
p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
=end

#5
=begin
def rotate90(matrix)
  n = matrix[0].size
  m = matrix.size

  arr = Array.new(n) { Array.new(m) }
  temp_arr = []
  n.times{|x|
    (0..m-1).reverse_each{|y|
    temp_arr.push(matrix[y][x])
    }
    arr[x] = temp_arr
    temp_arr = []
  }
  return arr
end



matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

=begin
p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
=end

#6
=begin
def my_method(array)
  if array.empty?
    []
  else
    array.map! { |value|
      if array.size == 1
        value * 7
      else
        value * value
      end
    }
  end
end


p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])
=end

#7

def merge(arr_1,arr_2)
  arr = [arr_1,arr_2]
  arr.flatten!
  2.times {
    (1..arr.size-1).each {|x|
      if arr[x] < arr[x-1]
        arr[x-1], arr[x] = arr[x], arr[x-1]
      end
    }
  }
  return arr
end

=begin
p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
=end

#8

def merge_sort(array)
  return array if array.length <= 1

  mid = array.length / 2
  left_half = merge_sort(array[0...mid])
  right_half = merge_sort(array[mid..])

  merge(left_half, right_half)
end

def merge(left, right)
  merged = []
  left_index = 0
  right_index = 0

  while left_index < left.length && right_index < right.length
    if left[left_index] <= right[right_index]
      merged << left[left_index]
      left_index += 1
    else
      merged << right[right_index]
      right_index += 1
    end
  end

  merged += (left[left_index..])
  merged += (right[right_index..])

  merged
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

#9
=begin
def egyptian(rational_number)
  denominators = []
  unit_fraction = Rational(1, 1)
  remaining_fraction = rational_number

  while remaining_fraction > 0
    unit_fraction = next_unit_fraction(remaining_fraction)
    denominators << unit_fraction.denominator
    remaining_fraction -= Rational(1, unit_fraction.denominator)
  end
  
  p denominators
end

def unegyptian(denominators)
  sum = Rational(0)
  
  denominators.each do |denominator|
    sum += Rational(1, denominator)
  end
  
  sum
end

def next_unit_fraction(target_fraction)
  denominator = 2

  while Rational(1, denominator) > target_fraction
    denominator += 1
  end

  Rational(1, denominator)
end

p egyptian(Rational(2, 1)) == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1)) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
=end

def egyptian(target_value)
  denominators = []
  unit_denominator = 1
  until target_value == 0
    unit_fraction = Rational(1, unit_denominator)
    if unit_fraction <= target_value
      target_value -= unit_fraction
      denominators << unit_denominator
    end

    unit_denominator += 1
  end

  denominators
end

def unegyptian(denominators)
  denominators.inject(Rational(0)) do |accum, denominator|
    accum + Rational(1, denominator)
  end
end
p egyptian(Rational(2, 1)) == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1)) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

#test

response = gets.chomp

response