=begin
Given an array (arr) of integers, and a positive integer k. Find the number of pairs (i, j) 
having the sum (arr[i] + arr[j]) that is divisible by k and i < j. 
input: array, int
output: int, num of pairs that sum/int 
approach: iterate over array, then iterate over subarray [current..length] and check if sum
of current and subsequent elements are divisible by int. if so, increment count
return count 
=end

def divisible_sum_pairs(arr, int)
  count = 0

  arr.each_with_index do |num1, idx|
    arr[idx+1..arr.length].each do |num2|
      if (num1 + num2)%int == 0
        count += 1
      end 
    end
  end 
  count 
end 

p divisible_sum_pairs([1, 3, 2, 6, 1, 2], 3) == 5
p divisible_sum_pairs([8, 10], 2) == 1
p divisible_sum_pairs([5, 9, 10, 7, 4], 2) == 4
p divisible_sum_pairs([29, 97, 52, 86, 27, 89, 77, 19, 99, 96], 3) == 15
