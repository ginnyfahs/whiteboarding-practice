def count_duplicates(str)
  str = str.downcase
  letter_hash = {}
  
  str.each_char do |char|
    if !letter_hash[char]
      letter_hash[char] = 1 
    else 
      letter_hash[char] +=1 
    end 
  end
  
  num_duplicate_letters = letter_hash.select {|key, value| value > 1}.length
  
  return num_duplicate_letters
  
end 

count_duplicates("banana")
