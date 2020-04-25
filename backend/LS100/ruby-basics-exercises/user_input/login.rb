PASSWORD = 'SecreT'
USERNAME = 'admin'

loop do
  puts 'Please enter user name'
  user_name = gets.chomp

  puts 'Please enter your password:'
  password_try = gets.chomp

  break if user_name == USERNAME && password_try == PASSWORD
  puts 'Authorization failed!'
end

puts 'Welcome!'