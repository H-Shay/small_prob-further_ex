=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.
input:int
output: int 
approach: generate all substrings, turn to int and add to array, iterate through array checking if num is 
odd increment count if so, return count 
=end

def all_substrings(string)
  result = []
  string.chars.each_with_index do |char, i|
    index = i
    while index < string.length 
      result << string[i..index]
      index += 1 
    end 
  end 
  result
end 

def solve(string)
  counter = 0
  substrings = all_substrings(string)
  
  substrings.each do |substring|
    int = substring.to_i
    if int.odd?
      counter += 1
    end
  end
  counter 
end 

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28
