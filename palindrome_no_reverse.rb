#write a method to determine if a word is a palindrome, without 
#using the reverse method"

#input: string
#output: boolean

#approach: reverse by hand, then compare 

def reverse_by_hand(string)
  midpoint = (string.length/2)-1
  endpoint = string.length-1
  result =''
  count = 0

  endpoint.downto(0) do |i|
    result << string[i]
  end
  result
end 

def palindrome?(string)
  reverse_string = reverse_by_hand(string)
  if reverse_string == string
    return true
  end 
  false 
end 

p palindrome?("racecar")
p palindrome?('')
p palindrome?('fourteen')
p palindrome?('sixty-five') 