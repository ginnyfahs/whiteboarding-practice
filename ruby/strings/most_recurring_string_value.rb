def character_count(str)
  hash = {}
  most_value = 0
  
  str.each_char do |char|
    if !hash[char]
      hash[char] = 1 
    else 
      hash[char] +=1 
    end 
  end 
  
  return hash
end

def most_recurring_letter(string)
  hash_map = character_count(string)
  most_recurring_value = 0 
  most_recurring_char = ""
  
  hash_map.each do |key, value|
    if value > most_recurring_value
      most_recurring_value = value 
      most_recurring_char = key 
    end  
  end 
  p most_recurring_char
end 

most_recurring_letter("banana")
