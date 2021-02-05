=begin
Consider the leftmost and righmost appearances of some value in an array. We'll say that the 
"span" is the number of elements between the two inclusive. A single value has a span of 1. 
Returns the largest span found in the given array. (Efficiency is not a priority.)
input: array
output: int 
approach: iterate through arr with index, compare current element to subsequent elements. if same, 
change max variable to be difference between index of current elment and other element 
=end 

def maxSpan(arr)
  max = 0
  arr.each_with_index do |num1, idx1|
    arr.each_with_index do |num2, idx2|
      if num1 == num2
        if idx2-idx1 > max 
          max = idx2-idx1
        end
      end
    end
  end
  max +1
end 

p maxSpan([1, 2, 1, 1, 3]) == 4
p maxSpan([1, 4, 2, 1, 4, 1, 4]) == 6
p maxSpan([1, 4, 2, 1, 4, 4, 4]) == 6