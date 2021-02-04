=begin
In this simple Kata your task is to create a function that turns a string into a Mexican 
Wave. You will be passed a string and you must return that string in an array where an 
uppercase letter is a person standing up.
Rules
     1.  The input string will always be lower case but maybe empty.
2.  If the character in the string is whitespace then pass over it as if it was an empty 
seat.
input: string
output: array of strings
approach: iterate over string with index, capitalize char at index, add new word to result 
array, return result array 
=end

def wave(string)
  result = []
  idx = 0

  string.chars.each do |char|
    if char == ' '
      idx += 1
      next
    end 
    result << new_word(string, idx)
    idx +=1
  end 
  result
end 

def new_word(string, index_of_char)
  if index_of_char == 0
    return string.capitalize
  end 
  return string[0..index_of_char-1] + string[index_of_char].capitalize + 
  string[index_of_char+1..string.length]
end

#p new_word('hello', 2)


p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", 
"two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
