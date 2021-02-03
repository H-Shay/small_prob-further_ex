=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of 
those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, 
fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

For an extra challenge, rewrite your method to use Enumerable#sort 
(unless you already did so).

input: array
output: array sorted by english alphabetical names 

approach: use hash to turn nums to strings, sort strings, use hash to convert back 

=end

def alphabetic_number_sort(arr)
  hsh = {0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 
6 =>'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 
12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 
17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
}
  converted = []

  arr.each do |num|
    converted << hsh.fetch(num)
  end 
  sorted = converted.sort 
  
  result = []
  sorted.each do |string_num|
    result << hsh.key(string_num)
  end 
  result
end 


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
] 

