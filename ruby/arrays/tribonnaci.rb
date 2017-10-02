def tribonacci(start_arr, n)
  trib_sequence = start_arr 
  i = 3
  while i < n 
    new_num = start_arr[i-1] + start_arr[i-2] + start_arr[i-3]
    start_arr << new_num
    i +=1 
  end 
  return start_arr
  
end 

p tribonacci([1,1,1],10)