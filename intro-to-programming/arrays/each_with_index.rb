to_do_list = ['saugen', 'bügeln', 'kochen', 'code', 'lernen']

to_do_list.each_with_index { |val, idx| puts "#{idx+1}: #{val}" }