=begin
Write a function, persistence, that takes in a positive parameter num and returns its 
multiplicative persistence, which is the number of times you must multiply the digits in 
num until you reach a single digit.

For example:

 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number
input: int
output: int
approach:set count var, turn int to string, split into digits, iterate array and convert 
back to int and multiply, increment count convert back to string and check num digits, if 
digits > 1, repeat  
=end

def string_mult(num)
  string_num = num.to_s
  product = 1
  string_num.chars.each do |char|
    product *= char.to_i
  end
  product
end 

def persistence(int)
  if int.to_s.size <= 1
    return 0 
  end 
  count = 1
  result = string_mult(int)
  while result.to_s.size > 1 
    result = string_mult(result)
    count +=1 
  end
  count
end 


p persistence(39) #== 3
p persistence(4) #== 0
p persistence(25) #== 2
p persistence(999) #== 4
