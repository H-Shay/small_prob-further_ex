#Write a method that searches for all multiples of 3 or 5 that lie between 1 and some 
#other number, and then computes the sum of those multiples. For instance, if the supplied 
#number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

#You may assume that the number passed in is an integer greater than 1.

#input: int
#output: int

#approach: intitalize empty array, iterate over range object and check if num%3 or5 ==0
#if so, add to array, return sum of array

#further exploration
def multisum(num)
  (1..num).select { |i| i%3 == 0 || i%5 == 0 }.inject(:+)
end 

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168