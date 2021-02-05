=begin
Given a string, look for a mirror image (backwards) string at both the beginning and end of the 
given string. In other words, zero or more characters at the very begining of the given string, 
and at the very end of the string in reverse order (possibly overlapping). For example, the 
string "abXYZba" has the mirror end "ab".
input: string
output: string or substring 
approach: return string if palindrome. otherwise generate substrings, and check each one to see 
if the reverse is present at end of string. return if so 
=end 

def substrings(string)
  result = []
  string.chars.each_with_index do |char, idx|
    idx2 =idx
    while idx2 < string.length
      result << string[idx..idx2]
      idx2 +=1
    end
    end
  result.sort.reverse 
end

def mirrorEnds(string)
  substrings = substrings(string)

  substrings.each do |substring|
    sub_length = substring.length-1
    front = string[0..sub_length]
    back_index = (string.length-sub_length)-1
    back = string[back_index..string.length]
    if substring == front && substring.reverse == back
      return substring
    end
  end 
end 

#p substrings('abab')

p mirrorEnds("abXYZba") #== "ab"
p mirrorEnds("abca") == "a"
p mirrorEnds("aba") == "aba"