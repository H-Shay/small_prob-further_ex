=begin
Given a string, count the number of words ending in 'y' or 'z' -- so the 'y' in "heavy" 
and the 'z' in "fez" count, but not the 'y' in "yellow" (not case sensitive). We'll say that a 
  y or z is at the end of a word if there is not an alphabetic letter immediately following it. 
  (Note: Character.isLetter(char) tests if a char is an alphabetic letter.)
input: string
output: int 
approach: split into array, iterate over word and check if last letter is y or z 
=end 

def countYZ(string)
  count = 0
  arr = string.split
  
  arr.each do |word|
    if word[-1] == 'y' || word[-1] == 'z'
      count +=1 
    end
  end
  count 
end  

p countYZ("fez day") == 2
p countYZ("day fez") == 2
p countYZ("day fyyyz") == 2