def fizzbuzz(arr)
  fizzbuzz_arr = []
  
  arr.each do |number|
    if number % 3 == 0 && number % 5 == 0 
      number = "fizzbuzz"
      fizzbuzz_arr << number
    elsif number % 5 == 0 
      number = "buzz"
      fizzbuzz_arr << number
    elsif number % 3 == 0 
      number = "fizz" 
      fizzbuzz_arr << number
    else 
      fizzbuzz_arr << number 
    end 
  end
  
  return fizzbuzz_arr.join(" ")
  
end
