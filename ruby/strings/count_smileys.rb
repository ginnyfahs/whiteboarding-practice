def count_smileys(arr)
  
  potential_smileys  = []
  
  arr.each do |item|
    if (item[0] == ':' || item[0] == ';') && (item.length <= 3)
      if item[1] == '-'
        if item[2] == ")" || item[2] == "D"
          potential_smileys << item
        end 
      else 
        if item[1] == ")" || item[1] == "D"
          potential_smileys << item 
        end 
      end 
    end 
  end 
   
   return potential_smileys.length 
end 

p count_smileys([":)", ":-D", ";-D", ";)"])
