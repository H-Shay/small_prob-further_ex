=begin
5 kyu
Complete the function scramble(str1, str2) that returns true if a portion of str1 
characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.
input: two strings 
output: boolean if str2 is a subset of str1
approach: iterate through str2, check f each element of str2 is included in str1. if not,
return false. if so, remove matching element from str1 
=end

def scramble(str1, str2)
  str2.chars.each do |char|
    if !str1.include?(char)
      return false
    else
      index = str1.rindex(char)
      str1[index] = ''
    end
  end
  true
end 

p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
