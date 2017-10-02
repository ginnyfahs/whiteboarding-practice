def get_indices_of_item_weights(arr, limit)
  
  output = []
  
  arr.each_with_index do |outer_number, outer_number_index|
    arr.each_with_index do |inner_number, inner_number_index|
      if inner_number + outer_number == limit && outer_number_index != inner_number_index
         output << outer_number_index
         output << inner_number_index  
         return output 
      end 
    end
  end 
  
end

p get_indices_of_item_weights([4, 6, 10, 15, 16], 21)