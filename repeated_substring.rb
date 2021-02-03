=begin
For a given nonempty string s find a minimum substring t and the maximum number k, such 
that the entire string s is equal to t repeated k times. The input string consists of 
lowercase latin letters. Your function should return a tuple (in Python) (t, k) or an array 
(in Ruby and JavaScript) [t, k]

Example #1:

for string s = "ababab"
the answer is
["ab", 3]

Example #2:

for string s = "abcde"
the answer is ['abcde', 1]
because for this string "abcde" the minimum substring t, such that s is t repeated k 
times, is itself.

input: string
output: array containing substring, num times substring repeated is equal to s 
approach: generate all substrings. generate duplicate substring by multipling substring
by whatever num will make entire string equal to s.length. check generated substring against 
s, if good add substring seed to arr and generator num to result arr and return 

=end

def generate_all_substrings(string)
  result = []
  string.chars.each_with_index do |char, idx|
    index = idx
    while index < string.length
      result << string[idx..index]
      index += 1 
    end 
  end
  result
end 


def f(string)
  result = []
  substrings = generate_all_substrings(string)

  substrings.each do |substring|
    int = string.length/substring.length
    repeat = substring*int
    if repeat == string
      result << substring
      result << int
      return result 
    end
  end 
end 

#
p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
