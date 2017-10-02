def second_largest_sum(array)

  if array.length < 3 
    RaiseError "Array must have three numbers."
  end 

  two_highest_sums = []
  first_sum = array[0] + array[1]
  second_sum = array[0] + array[2]
  
  if second_sum > first_sum
    two_highest_sums << first_sum
    two_highest_sums << second_sum
  else 
    two_highest_sums << second_sum
    two_highest_sums << first_sum
  end 

  array.each_with_index do |outer_number, outer_index|
    array.each_with_index do |inner_number, inner_index|
      if outer_index != inner_index 
        current_sum = inner_number + outer_number
        if current_sum > two_highest_sums[1]
          two_highest_sums[1] = current_sum
        elsif current_sum < two_highest_sums[1] && current_sum > two_highest_sums[0]
          two_highest_sums[0] = current_sum
        end 
      end 
    end 
  end 

  return two_highest_sums[0]

end 

second_largest_sum([10, 2, 5, 7, 9])
