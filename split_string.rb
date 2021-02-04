=begin 
Complete the solution so that it splits the string into pairs of two characters. If the 
string contains an odd number of characters then it should replace the missing second 
character of the final pair with an underscore ('_').
input: string
outout: array of strings 
approach: if string.length odd, add _ and then split by 2s, other wise split by 2 
=end

def solution(string)
  result = []
  if string.length.odd?
    string<< '_'
  end
  0.upto string.length-1 do |i|
    if i.even?
      result << string[i..i+1]
    end
  end
  result
end 

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
