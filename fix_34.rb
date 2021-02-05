=begin
Return an array that contains exactly the same numbers as the given array, but rearranged so 
that every 3 is immediately followed by a 4. Do not move the 3's, but every other number may 
move. The array contains the same number of 3's and 4's, every 3 has a number after it that is 
not a 3, and a 3 appears in the array before any 4.
input: array
output: array 
approach: iterate over array, find index of 3 and index of 3 + 1. find index of first 4, swap 4
with num at index of 3 + 1. reset indexes, check if have all needed indexes before swapping 
again
=end 

def fix34(arr)
  index_of_3 = nil
  index_of_3_next = nil
  index_of_4 = nil

  arr.each_with_index do |num, idx|
    if num == 3
      index_of_3 = idx
      index_of_3_next = idx+1
    end
    if num == 4
      index_of_4 = idx
    end
    if index_of_3 != nil && index_of_3_next != nil && index_of_4 != nil
      arr[index_of_3_next], arr[index_of_4] = arr[index_of_4], arr[index_of_3_next]
      index_of_4 = nil
      index_of_3 = nil
      index_of_3_next = nil
    end
  end
  arr
end 

p fix34([1, 3, 1, 4]) == [1, 3, 4, 1]
p fix34([1, 3, 1, 4, 4, 3, 1]) == [1, 3, 4, 1, 1, 3, 4]
p fix34([3, 2, 2, 4]) == [3, 4, 2, 2]