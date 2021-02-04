=begin
Complete the function that
accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.
Examples
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2
input: two arrays
output: int 
approach: iterate trhough array1 with index, use index to access corresponding element in 
arr2, get absval difference, then square that and add to sum. at end divide sum by arr1.length
=end

def solution(arr1, arr2)
  sum = 0
  arr1.each_with_index do |element, idx|
    diff = (element - arr2[idx]).abs
    sum += diff**2
  end
  sum/arr1.length.to_f
end 


p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1
