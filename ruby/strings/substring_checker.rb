def substring_checker(a1, a2)
  substrings = []
  i = 0 
  
  while i < a2.length
    j = 0 
    while j < a1.length
      if a2[i].include? a1[j] 
        if !substrings.include? a1[j]
         substrings << a1[j]
        end 
      end 
      j +=1 
    end 
      i +=1 
  end 
  
  return substrings
end 

a1 = ["arp", "live", "strong", "hello"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

p substring_checker(a1, a2)