def make_anagrams(a, b)
  if a == b 
    return 0 
  end 
  
  hash_a = {}
  hash_b = {}
  
  a.each_char do |char|
    if !hash_a[char]
      hash_a[char] = 1 
    else 
      hash_a[char] +=1 
    end 
  end
  
  b.each_char do |char|
    if !hash_b[char]
      hash_b[char] = 1 
    else 
      hash_b[char] +=1 
    end 
  end
  
  hash_a.each do |key, value|
    if hash_b[key] == value 
      hash_a.delete(key)
      hash_b.delete(key)
    end 
  end 
  
  total_missing = hash_a.values + hash_b.values
  
  return total_missing.inject(:+)
  
end 

a = "devbootcamp"
b = "dbc"
p make_anagrams(a, b)
