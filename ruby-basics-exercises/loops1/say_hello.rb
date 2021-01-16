say_hello = 0
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end