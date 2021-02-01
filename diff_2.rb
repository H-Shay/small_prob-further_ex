#he objective is to return all pairs of integers from a given array of integers that have a difference of 2.
# The result array should be sorted in ascending order of values.
# Assume there are no duplicate integers in the array.
# The order of the integers in the input array should not matter.

def difference_of_two(arr)
  result = []
  arr.sort! 

  arr.each_with_index do |num1, i|
    arr[i..arr.size].each do |num2|
      if (num1-num2).abs == 2 
        result << [num1,num2]
        break
      elsif (num1-num2).abs > 2 
        break 
      end
    end  
  end 
  result
end 



p difference_of_two([1, 2, 3, 4]) ==  [[1, 3], [2, 4]]
p difference_of_two([4, 1, 2, 3]) == [[1, 3], [2, 4]]
p difference_of_two([1, 23, 3, 4, 7]) == [[1, 3]]
p difference_of_two([4, 3, 1, 5, 6]) == [[1, 3], [3, 5], [4, 6]]
p difference_of_two([2, 4]) == [[2, 4]]
p difference_of_two([1, 4, 7, 10, 13]) == []