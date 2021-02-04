=begin
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: 
a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

input: string
output: string with highest letter value 
approach: split string into word array, iterate over words with index. sum up char.ord of 
words, if sum is greater than current max, store index value of word. use index to return max
=end

def high(string)
  arr = string.split
  max = 0
  index = 0

  arr.each_with_index do |word, idx|
    sum = 0
    word.chars.each do |char|
      sum += char.ord-96
    end 
    if sum > max 
      max = sum
      index = idx
    end
  end
  arr[index]
end 


p high('man i need a taxi up to ubud') #== 'taxi'
p high('what time are we climbing up the volcano') #== 'volcano'
p high('take me to semynak') #== 'semynak'
p high('aaa b') #== 'aaa'
