def allcaps(word)
  if word.length > 10 
     word.upcase
  else
    word
  end
end

puts allcaps('hello world')
puts allcaps('hello')