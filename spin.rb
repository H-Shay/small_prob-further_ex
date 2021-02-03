=begin
Write a function that takes in a string of one or more words, and returns the same string, 
but with all five or more letter words reversed (Just like the name of this Kata). Strings 
passed in will consist of only letters and spaces. Spaces will be included only when more 
than one word is present.

Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
input: string
output: string
approach: split, iterate array, check length of word, reverse if word > 5
=end

def spinWords(string)
  words = string.split
  words.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  words.join(' ')
end 

p spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
p spinWords("This is a test") == "This is a test" 
p spinWords("This is another test") == "This is rehtona test"

