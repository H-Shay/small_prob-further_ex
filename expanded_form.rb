=begin
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.

If you liked this kata, check out part 2!!
input: int
output: string representation of digits 
approach: turn to string, access each digit, turn to int, muliply by decimal space, and 
add to resut string, return result string
=end

def expanded_form(int)
  result = ""
  string_int = int.to_s
  idx2 = string_int.length-1
  string_int.chars.each do |char|
    if char != '0'
      result << (char.to_i * 10**idx2).to_s
      result << "+"
    end
    idx2 -= 1
  end
  result.chop  
end   


p expanded_form(12) #== '10 + 2'
p expanded_form(42) #== '40 + 2'
p expanded_form(70304) #== '70000 + 300 + 4'

