=begin
Given a string, return the longest substring that appears at both the beginning and end of 
the string without overlapping. For example, sameEnds("abXab") is "ab".
input: string
output: substring 
approach: need all substrings. helper method to gnerate all substrings. iterate over array of 
substrings, check if each substring begins and ends string. need a check to make sure not 
overlapping. substring.length X2 > string.length 
not overlapping. if ends and begins, check if greater than max. if so, change max. return max
=end 

def substrings(string)
  result = []
  chars = string.chars

  chars.each_with_index do |char, idx|
    idx2 = idx
    while idx2 < chars.length
      result << string[idx..idx2]
      idx2 +=1
    end 
  end
  result.delete(string)
  result
end  

def sameEnds(string)
  max = 0
  substrings = substrings(string)
  max_substring = ""

  substrings.each do |substring|
    sub_length = substring.length-1
    front = string[0..sub_length]
    back_index = (string.length-sub_length)-1
    back = string[back_index..string.length]
    if front == substring && back == substring
      if substring.length <= string.length/2
        length = substring.length
        if length > max_substring.length
          max_substring = substring
          end
        end 
    end
  end
  max_substring  
end 

#p substrings('hello')

p sameEnds("abXYab") #== "ab"
p sameEnds("xx") == "x"
p sameEnds("xxx") #== "x"