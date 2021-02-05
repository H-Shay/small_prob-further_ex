=begin
Given n>=0, create an array length n*n with the following pattern, shown here for n=3 : 
{0, 0, 1,    0, 2, 1,    3, 2, 1} (spaces added to show the 3 groups).
input: int 
output: array with ascending nums 
approach: n times call generate subsquence. how to reliably generate sequence which outlines
decimal place. need total places, then add 1 to last, 2, to second last, 3 to thrid last etc
=end

def generate_subsequence(n, arr_size)
  result = []
  arr_size.times do 
    result << 0
  end 

  neg_index = -1
   n.times do |i|
     result[neg_index] = i+1
     neg_index -= 1
   end
   result
end  

def squareUp(n)
  result = []
  n.times do |i|
    result << generate_subsequence(i+1, n)
  end
  result.flatten
end 

#p generate_subsequence(1, 4)
#p generate_subsequence(4)
#p generate_subsequence(1)

p squareUp(3) #== [0, 0, 1, 0, 2, 1, 3, 2, 1]
p squareUp(2) == [0, 1, 2, 1]
p squareUp(4) == [0, 0, 0, 1, 0, 0, 2, 1, 0, 3, 2, 1, 4, 3, 2, 1]

