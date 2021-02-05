=begin
Given two strings, base and remove, return a version of the base string where all instances of 
the remove string have been removed (not case sensitive). You may assume that the remove string 
  is length 1 or more. Remove only non-overlapping instances, so with "xxx" removing "xx" leaves 
  x".
  input: string
  output: modified string 
  approach: use delete?
=end 

def withoutString(string, substring)
  string.delete(substring)
end 

p withoutString("Hello there", "llo") == "He there"
p withoutString("Hello there", "e") == "Hllo thr"
p withoutString("Hello there", "x") == "Hello there"