def gap(g, m, n)
  i = m 
  
  while i <= (n - g)   
    if is_prime?(i) && is_prime?(i+g) && get_primes(i, i+g).length == 2 
      return [i, i+g]
    end 
    i += 1 
  end 
  
  return nil 
end 

def get_primes(m, n)
  primes = []
  i = m 
  while i <= n 
    if is_prime?(i)
      primes << i 
    end 
    if i.odd?
      i +=2 
    else 
      i +=1 
    end 
  end 
  return primes 
end 

def is_prime?(n)
  if n <= 1 
    return false 
  else 
    i = 2 
    until i > Math.sqrt(n)
      if n % i == 0 
        return false 
      end 
      i +=1 
    end 
  end 
  return true 
end 

p gap(6, 100, 110)
