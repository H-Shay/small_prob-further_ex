#given two strings, your job is to find out if there is a substring that appears in both 
#strings. you will return true if you find a substring that appears in both strings, or
#false if you do not. we only care about substrings that are longer than one letter long

#input: two strings
#output: boolean 
#approach: create all substrings > 2 from first string, return as array. iterate through
#this array and check if substring is in string 2 using includes? if so return true
#otherwise retrun false 
#all substrings: iterate over array of chars. for each selected char, add increasing num
#of subsequent elements 

def all_substrings(string)
  result = []
  
  string.chars.each_with_index do |char, i|
    index = i
    while index < string.length
      if string[i..index].size > 1
        result << string[i..index]
      end
      index+=1
    end
  end 
  result
end 



def substring_test(str1, str2)
  str1.downcase!
  str2.downcase!
  substrings = all_substrings(str1)
  substrings.each do |substring|
    if str2.include?(substring)
      return true 
    end
  end
  false
end 

#p all_substrings('abcdef')

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', '') == false 
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('1234567', '541265') == true