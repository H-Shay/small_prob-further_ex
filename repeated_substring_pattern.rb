#given a non-empty string check if it can be constructed by takng 
#a substring of it and appending multiple copies of the substring
#together. you may assume the given string consists of lowercase 
#english letters only 

#approach: find all substrings. iterate through substrings and generate string of repeated 
#copies of them equal to string size. then check if constructed string is equal to original 
#string
#generate all substrings:
#-initalize new array
#-iterate over string with index and for each char, generate all substrings for that char
#-index unitl end 
#-add to result array
#-iterate through substrings with each, within block loop and create repeated strings i*substring
#-break if i > original string.length and do check against string. if equal, return true 

def generate_all_substrings(string)
  result = []
  string.chars.each_with_index do |char, i|
    count = i
    loop do 
      result << string[i..count]
      count += 1
      break if count == string.size
    end 
  end 
  result.delete(string)
  result
end 

def repeated_substring_pattern(string)
  substrings = generate_all_substrings(string)
  substrings.each do |substring|
    count = 0
    loop do 
      pattern = substring*count
      if pattern == string
        return true 
      end 
      count +=1 
      break if count > string.size 
    end 
  end
  false
end 

#p generate_all_substrings('aabaaba')
p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false
p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true 
p repeated_substring_pattern('abcabcabcabc') == true 