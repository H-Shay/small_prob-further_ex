=begin
Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value. 
Return the number of clumps in the given array.
input: arr
output: num clumps 
approach: iterate  over array, check if ele adjcent == ele. if so, increment count and enter inner
loop. while adjacents are still same, keep going. break out when adjacents are not same
return count 
=end 

def countClumps(arr)
  count = 0
  index = 0

  loop do 
    
    if arr[index] == arr[index+1]
      count+= 1
      while arr[index] == arr[index+1]
        index +=1
      end
    end
    index+=1
    break if index == arr.length
  end
  count 
end  

p countClumps([1, 2, 2, 3, 4, 4]) #== 2
p countClumps([1, 1, 2, 1, 1]) == 2
p countClumps([1, 1, 1, 1, 1]) == 1