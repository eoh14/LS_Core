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
