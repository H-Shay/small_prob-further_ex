=begin
Given two arrays of ints sorted in increasing order, outer and inner, return true if all of 
the numbers in inner appear in outer. The best solution makes only a single "linear" pass of 
both arrays, taking advantage of the fact that both arrays are already in sorted order.
input: two arrays 
output: boolean
approach: iterate over 'inner' array, if outer array includes each element, increment count
return count == inner array.length 
=end 

def linearIn(arr1, arr2)
  count = 0
  arr2.each do |num|
    if arr1.include?(num)
      count += 1
    end
  end
  count == arr2.length
end 

p linearIn([1, 2, 4, 6], [2, 4]) == true
p linearIn([1, 2, 4, 6], [2, 3, 4]) == false
p linearIn([1, 2, 4, 4, 6], [2, 4]) == true