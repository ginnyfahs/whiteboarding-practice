def hashtag_generator(str)
  hashtag_array = str.split(" ")
  final_hashtag = []
  
  hashtag_array.each do |word|
    final_hashtag << word.capitalize
  end 
  
  if final_hashtag.length < 140
    return "#" + final_hashtag.join("")
  end 
  
  return false 
  
end
