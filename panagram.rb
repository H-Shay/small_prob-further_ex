=begin
6 kyu
A pangram is a sentence that contains every single letter of the alphabet at least once. 
For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, 
because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. 
Ignore numbers and punctuation.

input: string
output: boolean 

approach: create hash with alphabet and zeros, split string into chars, iterate over char 
array and increment hash for char, if at end any of the hash values are still 0, return
false 
=end
def panagram?(string)
  hsh ={}
  ('a'..'z').each do |letter|
    hsh[letter] = 0 
  end

  chars = string.chars 
  chars.each do |char|
    if hsh.has_key?(char)
      hsh[char] +=1 
    end 
  end
  return hsh.all? {|key, value| value > 0}
end 

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
