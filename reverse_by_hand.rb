#reverse an array without using the built-in reverse method

#input: array
#output: new array-do it both ways 

#approach: inplace: swap front with back until hit middle

def reverse_in_place(arr)
  midpoint = (arr.size/2)-1
  endpoint = arr.size-1
  0.upto(midpoint) do |i|
    arr[i], arr[endpoint-i] = arr[endpoint-i], arr[i]
  end 
  arr
end 

def reverse(arr)
  result = []
  count = 0
  (arr.size-1).downto(0) do |i|
    result[count] = arr[i]
    count += 1
  end 
  result 
end 

p reverse([1,2,3,4])
p reverse([1,2,3,4,5])