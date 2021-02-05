=begin
(This is a slightly harder version of the fix34 problem.) Return an array that contains exactly 
the same numbers as the given array, but rearranged so that every 4 is immediately followed by 
a 5. Do not move the 4's, but every other number may move. The array contains the same number 
of 4's and 5's, and every 4 has a number after it that is not a 4. In this version, 5's may 
appear anywhere in the original array.
=end 

def fix45(arr)
  index_of_4 = nil
  index_of_4_next = nil
  index_of_5 = nil

  arr.each_with_index do |num, idx|
    if num == 4
      index_of_4 = idx
      index_of_4_next = idx+1
    end
    if num == 5
      index_of_5 = idx
    end
    if index_of_4 != nil && index_of_4_next != nil && index_of_5 != nil
      arr[index_of_4_next], arr[index_of_5] = arr[index_of_5], arr[index_of_4_next]
      index_of_5 = nil
      index_of_4 = nil
      index_of_4_next = nil
      #need to skip check at 4_next if 5 has been swapped in there???
    end
  end
  arr
end 

p fix45([5, 4, 9, 4, 9, 5]) #== [9, 4, 5, 4, 5, 9]
#p fix45([1, 4, 1, 5]) #== [1, 4, 5, 1]
#p fix45([1, 4, 1, 5, 5, 4, 1]) #== [1, 4, 5, 1, 1, 4, 5]