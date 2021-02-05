=begin
Given n>=0, create an array with the pattern {1,    1, 2,    1, 2, 3,   ... 1, 2, 3 .. n} 
(spaces added to show the grouping). Note that the length of the array will be 1 + 2 + 3 ... + n, 
which is known to sum to exactly n*(n + 1)/2.
input: int
output: array with series 
approach: use helper method to generate subsequences, then add to result arr, flatten. iterate
up from 1 to n to determine how many times to call subsquence 
=end 

def generate_subsequence(n)
  result = []
  n.times do |i|
    result << i +1
  end
 result
end 

def seriesUp(n)
  result = []
  1.upto(n) do |i|
    subsquence = generate_subsequence(i)
    result << subsquence
  end 
  result.flatten
end  

p seriesUp(3) == [1, 1, 2, 1, 2, 3]
p seriesUp(4) == [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]
p seriesUp(2) == [1, 1, 2]