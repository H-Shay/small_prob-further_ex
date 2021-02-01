#Write a hexadecimal_to_integer method that converts a string 
#representing a hexadecimal number to its integer value.

#input: hex number
#output: int value 
#approach: 

NUMS = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, 
  '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12, 
  'D' => 13, 'E' => 14, 'F' => 15 }

def hexadecimal_to_integer(string)
  sum = 0
  result = string.chars.each_with_object([]) do |char, arr|
    if NUMS.has_key?(char.upcase)
      arr << NUMS.fetch(char.upcase)
    end 
  end 
  result.reverse!
  0.upto(result.size-1) do |i|
    result[i] = result[i]*(16**i)
  end 
  result.sum
end 

p hexadecimal_to_integer('4D9f') == 19871