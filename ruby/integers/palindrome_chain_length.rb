def swap_digits(number)
  n = number 
  new_num = 0 
  
  while n != 0 
    new_num = (new_num) * 10 + (n % 10)
    n /= 10 
  end 
  
  return new_num
  
end 


def palindrome_chain_length(orig_number)
  step_count = 0 
  
  until orig_number == swap_digits(orig_number)
    orig_number += swap_digits(orig_number)
    step_count +=1 
  end 
  
  return step_count
  
end 

palindrome_chain_length(2048)