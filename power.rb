=begin
Create a method called "power" that takes two integers and returns the value of the first 
argument raised to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.
input: two ints
output: integer 
approach: use times to iterate and multiply
=end

def power(int1, int2)
  return nil if int2 < 0
  product = 1
  int2.times do |i|
    product*= int1
  end
  product 
end 

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil
