=begin
6 kyu
In this kata you are required to, given a string, replace every letter with its position 
in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.

Example
alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" 
(as a string)
input: string
output: string of ints of alphabet order of chars 
approach: delete all non-alphaetical chars, split into chars, build new string with char.ord-96
return new string 
=end

def alphabet_position(string)
  string.gsub!(/[^[:alnum:]]/, "")
  string.downcase!
  arr = string.chars
  result = []
  arr.each do |char|
    result << char.ord-96
  end
  result.join(' ')
end 

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
