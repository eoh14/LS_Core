#1
=begin
puts "Hello".class
puts 5.class
puts [1, 2, 3].class
=end

#2-9
=begin
class Cat
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def name
    @name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet

kitty.name = 'Luna'
kitty.greet
=end

#10
module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end
class Cat
  include Walkable
  attr_reader :name
  def walk
    puts "Let's go for a walk!"
  end
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
    puts walk
  end
end

kitty = Cat.new('Sophie')
kitty.greet