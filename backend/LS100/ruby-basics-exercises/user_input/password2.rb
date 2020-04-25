PASSWORD = 'SecreT'

loop do
  puts "Please enter your password: "
  user_password = gets.chomp
  if user_password == PASSWORD
    puts "Welcome!"
    break
  else
    puts "Invalid password mf!"
  end
end

