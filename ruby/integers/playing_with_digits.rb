def number_split(number)
  number_arr = []
  until number == 0 
    digit = number % 10 
    number_arr.unshift(digit)
    number /=10 
  end 
  
  return number_arr
  
end 

def dig_pow(number, starting_power)
  number_digits_arr = number_split(number)
  
  sum = 0 
  i = 0 
  
  while i < number_digits_arr.length 
    sum = sum + number_digits_arr[i] ** (starting_power + i)
    i +=1 
  end 
  
  return sum / number 
  
end

dig_pow(46288, 3)

# Note: Don’t use a hash when there are repeating numbers that will get duplicated or overwritten. Arrays are better for this kind of situation. 
