=begin
What is an anagram? Well, two words are anagrams of each other if they both contain 
the 
same letters. For example:
'abba' & 'baab' == true
'abba' & 'bbaa' == true
'abba' & 'abbba' == false
'abba' & 'abca' == false
Write a function that will find all the anagrams of a word from a list. You will be given 
two inputs a word and an array with words. You should return an array of all the anagrams 
or an empty array if there are none. For example:
=end

def valid_anagram(string1, string2)
  string1.chars.sort == string2.chars.sort 
end

def anagrams(string, arr)
  result = []
  arr.each do |word|
    if valid_anagram(string, word)
      result << word
    end
  end
  result 
end 

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) #== ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) #== ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) #== []
