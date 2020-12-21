x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1  # refactor this to x -= 1
end

puts "Done!"

# takes user input and counts down to 0