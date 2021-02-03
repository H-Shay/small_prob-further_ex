=begin
Write a method that takes a string as an argument and groups the number of times each 
character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.
input: string
output: hash with num times each uniq char appears in descending order
approach: iterate over string and count chars in string for each char, then add to hash.
reset for each char 
=end

def get_char_count(string)
  result = {}
  string.downcase!
  string.delete!('.')
  string.delete!('?')
  string.delete!('!')

  string.chars.each do |char|
    count = string.count(char)
    if result.has_key?(count)
      result.fetch(count).push(char)
      result.fetch(count).uniq!
      result.fetch(count).sort!
    else 
      result[count] = [char]
    end
  end
  result
end 


p get_char_count("Mississippi") #== {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") #== {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") #== {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") #== {3=>["a", "b", "c"]}
p get_char_count("abc123") #== {1=>["1", "2", "3", "a", "b", "c"]}
