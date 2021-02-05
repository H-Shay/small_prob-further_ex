=begin
Given a string, return the length of the largest "block" in the string. A block is a run of 
adjacent chars that are the same.
input: string
output: int 
approach: generate all substrings. iterate over substrings and determine if char is same as adj
char. keep iteratng until chars are different. find length of substring and if it is larger
than max, rreplace 
=end

def substrings(string)
  result = []
  string.chars.each_with_index do |char, idx|
    idx2 = idx 
    while idx2 < string.length
      result << string[idx..idx2]
      idx2 += 1
    end
  end
  result 
end 

def maxBlock(string)
  max = 0
  substrings = substrings(string)

  substrings.each do |substring|
    idx = 0
    count = 0
    while idx < substring.length
      inner_count = 1
      if substring[idx] == substring[idx+1]
        inner_count +=1
      end
      idx+=1
      if inner_count > count
        count = inner_count
      end
    end
    if count > max 
      max = count 
    end
  end
  max 
end 



p maxBlock("hoopla") #== 2
p maxBlock("abbCCCddBBBxx") #→ 3
#maxBlock("") → 0