=begin
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the 
given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

input: int
output: int 
approach: generate nums with deleted digits, check which one is max
=end

def deleted(idx, string_int)
  arr = string_int.chars
  arr.delete_at(idx)
  arr.join
end 

def delete_digit(int)
  result = []
  string_int = int.to_s

  string_int.chars.each_with_index do |char, idx|
    result << deleted(idx, string_int)
  end
  result.max.to_i 
end 

#deleted(1,'152')
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
p delete_digit(951) == 95
p delete_digit(123456) == 23456
