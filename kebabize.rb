=begin
6 kyu
Modify the kebabize function so that it converts a camel case string into a kebab case.
kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:
the returned string should only contain lowercase letters

input: string
output: string
approach: iterate over string, tracking index+1. if index+1 char is capitalized, replace with
lower case and insert a hyphen at index
=end

def kebabize(string)
  result = ""
  idx = 0
  (0..9).each do |num|
    string.delete!(num.to_s)
  end 
  while idx < string.length-1
    if string[idx +1] == string[idx+1].capitalize
      result << string[idx]
      result << '-'
      result << string[idx+1].downcase
      idx +=1
    else
      result<< string[idx]
    end
    idx +=1  
  end 
  result << string[-1]
end  


p kebabize('myCamelCasedString') #== 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') #== 'my-camel-has-humps'
