=begin

Process the Problem	Understand the Problem	
Identify expected input and output
Make the requirements explicit
Identify rules
Mental model of the problem (optional)
Examples/Test Case	Validate understanding of the problem
Data Structure	How we represent data that we will work with when converting the input to output.
Algorithm	Steps for converting input to output
Code with Intent	Code	Implementation of Algorithm

=end

def count_vowel_substrings(str)
  chars = str.chars
  vowels = %w(a e i o u)
  if (chars.uniq & vowels).sort != vowels
    return 0
  else
    substring_arr = chars.select { |x| vowels.include?(x) }
    all_worthy_substrings = substring_arr.combination(5).to_a
    count = 0
    all_worthy_substrings.each {|y|
      if y.uniq.size == 5
        count += 1
      end
    }
    return count
  end
end

p count_vowel_substrings("abcde") == 0
p count_vowel_substrings("cuaieuouac") == 7
p count_vowel_substrings("aeiouu") == 2
p count_vowel_substrings("unicornarihan") == 0

=begin
a1 e i o u1
a1 e i o u2
a1 e i o u3
a2 e i o u1
a2 e i o u2
a2 e i o u3
=end