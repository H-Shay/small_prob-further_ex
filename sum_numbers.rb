=begin
Given a string, return the sum of the numbers appearing in the string, ignoring all other 
characters. A number is a series of 1 or more digit chars in a row. 
(Note: Character.isDigit(char) tests if a char is one of the chars '0', '1', .. '9'. 
  Integer.parseInt(string) converts a string to an int.)
input: string
output:sum of numbers in string
appraoch: iterate over string. check if curren element is num, if so, go into inner loop 
collecting nums until next char is not num. store this in variable, transform to int, 
and add to sum. return sum at end of iteration exectution 
=end 

sumNumbers("abc123xyz") == 123
sumNumbers("aa11b33") == 44
sumNumbers("7 11") == 18