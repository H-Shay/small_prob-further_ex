=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number 
passed in.
Note: If the number is a multiple of both 3 and 5, only count it once.
input: int
output: int sum 
approach: use range to generate nums between 1 and input, check if mult, if so, add to sum 
=end

def solution(int)
  sum = 0 
  1.upto(int-1) do |i|
    if i%15 == 0
      sum+=i
      next
    end 
    if i%5 == 0 || i%3 == 0
      sum += i
    end
  end
  sum
end 

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168
