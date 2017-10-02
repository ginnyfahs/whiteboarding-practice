def palindrome_permutation(string)
  string = string.delete(" ")

  letter_hash = {}
  string.each_char do |char|
    if !letter_hash[char]
      letter_hash[char] = 1 
    else 
      letter_hash[char] +=1 
    end 
  end 
  
  return false if letter_hash.select{|key, value| value.odd?}.length > 1 
  
  return true 
end 

p palindrome_permutation("nah nah")