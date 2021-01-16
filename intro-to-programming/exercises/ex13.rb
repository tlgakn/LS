arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']


deleted_arr = arr.delete_if { |word| word.start_with?("s") }


puts arr
