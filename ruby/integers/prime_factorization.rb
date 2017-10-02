def prime_parser(hash)
  result_string = ""
  hash.each do |key, value|
    if value == 1 
      result_string << "(#{key})"
    else 
      result_string << "(#{key}**#{value})"
    end 
  end
  
 result_string
end 

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

def prime_factorization(n)
  i = 2 
  prime_factors_hash={}
  
  if is_prime?(n)
    return "(#{n})"
  end 
  
  until n == 1 
  divisor = (2..n).find{|divisor| n % divisor == 0 }
    if is_prime?(divisor)
      if !prime_factors_hash[divisor]
        prime_factors_hash[divisor] = 1 
      else 
        prime_factors_hash[divisor] +=1 
      end 
      n /=divisor 
    end 
  end 
  
  return prime_parser(prime_factors_hash)
end 

prime_factorization(200)