=begin
Given a string, return true if the number of appearances of "is" anywhere in the string is 
equal to the number of appearances of "not" anywhere in the string (case sensitive).
=input: string
=output: boolean 
=approach: iterate over substrings, count is and not, return countnot== count is 
=end 


def substrings(string)
  result = []
  string.chars.each_with_index do |char, idx|
    idx2 =idx
    while idx2 < string.length
      result << string[idx..idx2]
      idx2 +=1
    end
    end
  result
end



def equalIsNot(string)
  count_is = 0
  count_not = 0
  substrings = substrings(string)

  substrings.each do |substring|
    if substring == 'is'
      count_is += 1
    end
    if substring == 'not'
      count_not += 1
    end
  end
  count_is == count_not
end 

p equalIsNot("This is not") == false
p equalIsNot("This is notnot") == true
p equalIsNot("noisxxnotyynotxisi") == true