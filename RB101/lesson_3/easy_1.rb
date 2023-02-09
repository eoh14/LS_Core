=begin
#1
it would print out 1,2,2,3 (non-distructive)

#2
! is destructive (mutable)
? is a boolean method which returns true/false

1. != not equals to. use it when comparing two objects
2. ! in front is used to turn any object into the opposite of their 
    boolean equivalent, like 6. but opposite.
3. ! destructive method which mutates the object "words".
4. ?: is ternary operator for if..else
5. makes the method called boolean and returns true/false
6.!! is used to turn any object into their boolean equivalent. 

=end
#3

advice = "Few things in life are as important as house training your pet dinosaur."

def advice_swapper(some_advice)
  advice_2 = []
  some_advice.split(" ").each{|word|
    if word == "important"
      word.replace("urgent")
    end
    advice_2 << word
  }
  advice_2.join(" ")
end

puts advice_swapper(advice)

#4
# [1,3,4,5]
# [2,3,4,5]
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) # numbers is now [1, 3, 4, 5]
numbers.delete(1) # numbers is now [2, 3, 4, 5]


#5

#puts (10..100).cover?(42)

#6

famous_words = "seven years ago..."

#puts "Four score and #{famous_words}"
#puts "Four score and " + famous_words

#7

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

flintstones.flatten!

#p flintstones

#8
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }


#p flintstones.assoc("Barney")





