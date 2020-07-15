def distinct(arr)
  result = []
  
  arr.map do |element|
    next if result.include?(element)
    result << element
  end
  result
    
end



p distinct([1]) == [1]
p distinct([1, 2]) == [1, 2]
p distinct([1, 1, 2]) == [1, 2]
p distinct([1, 1, 1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]
p distinct([1, 2, 2, 3, 3, 4, 4, 5, 6, 7, 7, 7]) == [1, 2, 3, 4, 5, 6, 7]