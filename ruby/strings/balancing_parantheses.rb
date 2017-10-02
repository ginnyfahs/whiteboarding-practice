def balanced_brackets(str)
  c = 0 
  
  str.each_char do |char|
    if char == "("
      c +=1 
    elsif char == ")"
      c -=1 
    end
    
    return false if c < 0
  end 
  
  return false if c > 0 
  
  return true 
end

str = "(()())"
p balanced_brackets(str)
