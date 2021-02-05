=begin
We'll say that a lowercase 'g' in a string is "happy" if there is another 'g' immediately 
to its left or right. Return true if all the g's in the given string are happy.
input: string
output: boolean
approach: iterate over string, check if current ele is g, if so, check adjacent letter. 
if not g and prior not g return false, otherwise, keep iterating from and repeating. return true if completed iteration
=end 

def gHappy(string)
  chars = string.chars
  chars.each_with_index do |char, idx|
    if char == 'g'
      if (chars[idx+1] != 'g') && (chars[idx-1] != 'g')
        return false 
      end
    end
  end 
  true
end 

p gHappy("xxggxx") #== true
p gHappy("xxgxx") == false
p gHappy("xxggyygxx") == false