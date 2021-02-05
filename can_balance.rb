=begin
Given a non-empty array, return true if there is a place to split the array so that the sum of 
the numbers on one side is equal to the sum of the numbers on the other side.
input: array
output: boolean 
approach: iterate over array generate l subarray and r subarray, compare sums. return if true. 
=end 

def lsub_arr(arr, idx)
  arr[0..idx]
end 

def rsub_arr(arr, idx)
  arr[idx+1..-1]
end 

def canBalance(arr)
  arr.each_with_index do |num, idx|
    lsum = lsub_arr(arr, idx).sum
    rsum = rsub_arr(arr, idx).sum
    if lsum == rsum
      return true 
    end
  end 
  false 
end 


p canBalance([1, 1, 1, 2, 1]) == true
p canBalance([2, 1, 1, 2, 1]) == false
p canBalance([10, 10]) == true