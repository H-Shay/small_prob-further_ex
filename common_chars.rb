#given an array of strings made only from lowercase letters, return an array of all characters
#that show up in all strings within the given array (including duplicates). for example, 
#if a character occurs 3 times in all strings but not 4 times, you need to include that 
#character three times in the final answer

#input: array of words
#output: array of chars
#approach: iterate over array, for current word iterate over chars. check if current char
#is included in all other words. if if is, add to result array and delete the char from 
#each of the other words in order to not be double-counted 
#-initialize result array 
#-iterate over array with each 
#--iterate over current word with each char 
#---check if subsequent words include char
#----pass rest of array to hepler method to check if all other elements of array 
#------have that char
#----if so, add char to result array and substitute char from all but first word with ''
#return result array 

def all_have_char(arr, char)
  count = 0
  arr.each do |word|
    if word.include?(char)
      count +=1 
    end
  end
  return count == arr.size 
end 

def substitute_char(arr, char)
  arr.each do |word|
    word.sub!(char, '')
  end 
end  

def common_chars(arr)
  result = []
  arr[0].chars do |char|
    if all_have_char(arr[1..arr.length-1], char)
      result << char
      substitute_char(arr[1..arr.length-1], char)
    end 
  end 
  result 
end 

p common_chars(['bella', 'label', 'roller']) == ['e','l','l']
p common_chars(['cool', 'lock', 'cook']) == ['c','o']
p common_chars(['hello', 'goodbye', 'booya','random']) == ['o']
p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []