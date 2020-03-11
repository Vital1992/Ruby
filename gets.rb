puts "Hi, what's your name?"
name = gets.chomp #input name and chomp will remove line break

puts "Great, what's your age?"
age = gets.chomp.to_i #convert to int

puts "So your name is #{name} and your age is #{age}"
