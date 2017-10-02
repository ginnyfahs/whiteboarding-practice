def last_digit(n1, n2)
  last_digit_n1 = n1 % 10 
  if last_digit_n1 == 0 
    return 0 
  elsif n2 == 0 
    return 1 
  else 
    mult_of_four = n2 % 4 
      if mult_of_four == 0 
        mult_of_four = 4 
      end 
    return n1 ** mult_of_four % 10 
  end 
end 

p last_digit(1234562304809,12039810293810298)
