=begin
write a method that takes a positive integer and returns the next bigger number formed by 
the same digits 
12 - 21
513 -531
2017 - 2071
if no bigger num can be composed using those digits, return -1 

input: int
output: int 

approach:guard clause for sing digit nums, nums where digits all same and nums where d1>d2>d3
split num into digits (turn into string and then array then back to check digits
swap 2 left digits for any larger 
=end 

def next_bigger_num(num)
  digits = num.to_s.split('')
  if digits.size == 1 || digits.uniq == [] || digits == digits.sort.reverse
    return - 1
  end
  digits[-2], digits[-1] = digits[-1], digits[-2]
  digits.join.to_i
end 

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798







