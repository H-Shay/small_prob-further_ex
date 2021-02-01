def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

#In our solution, we call string[1..-1] twice, and 
#call string_to_integer three times. This is somewhat repetitive. 
#Refactor our solution so it only makes these two calls once each.

def string_to_signed_integer(string)
  string[0]
   

end