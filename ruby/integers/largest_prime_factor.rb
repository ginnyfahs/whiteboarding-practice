def is_prime?(n)
  if n < 2 
    return false 
  end 
  
  i = 2 
  while i <= Math.sqrt(n)
    if n % i == 0 
      return false 
    end 
    i +=1 
  end 
    
  return true 
end 

def largest_prime_factor(n)
  if n < 2 
    RaiseError "No prime factors"
  end 
  
  divisor = 2 
  largest_prime_divisor = 1 
  
  until n == 1 
    divisor = (2..n).find{|divisor| n % divisor == 0 }
    if n % divisor == 0 && is_prime?(divisor) && divisor > largest_prime_divisor
      largest_prime_divisor = divisor 
    end 
    n /= divisor 
    divisor +=1 
  end 
  
  return largest_prime_divisor
  
end 

p largest_prime_factor(600851475143)
