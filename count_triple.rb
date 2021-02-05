=begin
We'll say that a "triple" in a string is a char appearing three times in a row. Return the 
number of triples in the given string. The triples may overlap.
input: string
output: int 
approach: iterate over string, check if next two chars are == to current char. if so, increment 
count. return count.
=end 

def countTriple(string)
  count = 0
  string.chars.each_with_index do |char, idx|
    if char == string[idx+1] && string[idx1] == string[idx+2]
      count += 1
    end
  end
count 
end 

p countTriple("abcXXXabc") == 1
p countTriple("xxxabyyyycd") == 3
p countTriple("a") == 0