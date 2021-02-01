=begin
write a function that returns true if a portion of str1 characters can be arranged to match
str2, otherwise returns false. 

for example, str1 is rkqodlw and str2 is world the output should return true
str1 is cedewaraaossoqqyt and str is codewars should return true 
str1 is katas and str2 is steak should return false 
only lowercase letters will be used and no punctuation or digits will be included.

input: two strings
output: boolean 
#approach: iterate over string2, check if each character is in string1, return false if
not, return true after iteration is done 
=end

def scramble(str1, str2)
  str2.chars.each do |char|
    return false if !str1.include?(char)
    if str1.include?(char)
      index = str1.rindex(char)
      str1[index] = ''
    end
  end 
  true
end 

p scramble('javaass', 'jjss') == false 
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true 
