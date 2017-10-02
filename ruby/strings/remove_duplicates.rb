# solve with hash 
def remove_dupes(str)
  letters_hash = {}
  
  str.each_char do |character|
    if !letters_hash[character]
      letters_hash[character] = 1 
    end 
  end
  
  return letters_hash.keys.join 
  
end 

# solve with array 
def remove_dupes(str)
  letters_arr = []
  
  str.each_char do |character| 
    if !letters_arr.include?(character)
      letters_arr << character 
    end 
  end 
  
  return letters_arr.join
end 

p remove_dupes("hello")
p remove_dupes("devbootcamp")
