=begin
Given two words, how many letters do you have to remove from them to make them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters (usually in a different 
  order).
Do not worry about case. All inputs will be lowercase.
input: two strings 
outout: int 
approach: sort both words, iterate through array 1 and remove anything not in array2, iter
through array2 and remove everything not in array 1 
=end

def anagram_difference(string1, string2)
  arr1 = string1.chars
  arr2 = string2.chars
  length1 = arr1.length
  length2 = arr2.length 

  anagram = arr1.intersection(arr2)

  diff = length1 + length2 - anagram.length
  diff.abs-anagram.length

end 



p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10
