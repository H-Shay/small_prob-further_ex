=begin
We'll say that a "mirror" section in an array is a group of contiguous elements such that 
somewhere in the array, the same group appears in reverse order. For example, the largest 
mirror section in {1, 2, 3, 8, 9, 3, 2, 1} is length 3 (the {1, 2, 3} part). Return the size 
of the largest mirror section found in the given array.
input: array
output: length largest mirror subarray 
approach: gnerate all subsets, keep in 2d array. iterate through original array, checking each 
slice to see if it is equal to any subset in 2d array. if so, grab length and check if length
is greater than current max 
=end 

def generate_all_subarrays(arr)
  result = []
  arr.each_with_index do |num, idx|
    idx2 = idx
    while idx2 < arr.length
      result << arr[idx..idx2]
      idx2 += 1
    end 
  end
  result 
end 

def maxMirror(arr)
  max = 0
  subsets = generate_all_subarrays(arr)

  arr.each_with_index do |num, idx|
    idx2 = idx
    while idx2 < arr.length
      if subsets.include?(arr[idx..idx2].reverse)
        length = arr[idx..idx2].length
        if length > max
          max = length
        end
      end
      idx2 +=1
    end
  end 
  max 
end 

p maxMirror([1, 2, 3, 8, 9, 3, 2, 1]) == 3
p maxMirror([1, 2, 1, 4]) == 3
p maxMirror([7, 1, 2, 9, 7, 2, 1]) == 2