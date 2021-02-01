#select the element out of the array if its index is a fibonacci number
#input:arr 
#output: arr (i'm asssuming all elements with index as fib)

#approach: generate all fibs between 0...arr.size-1. put in array. 
#iterate original array each with index, if fib array contains current index
#select the item

def index_fib(arr)
  result = []
  fib_arr = generate_fibs(arr.size-1) 
  arr.each_with_index do |el, i|
    if fib_arr.include?(i)
      result << arr[i]
    end 
  end
  result
end 


def generate_fibs(endpoint)
  result = [1,1]
  fib1 = 1
  fib2 = 1
  1.upto(endpoint) do 
    temp =fib1
    fib1 = fib2
    fib2 = temp + fib2
    result << fib2
  end 
  result 
end  

#p generate_fibs(6)

p index_fib([3,4,5,6,7,7,7])
p index_fib(['b', '4', 'tree'])