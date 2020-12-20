# case_statement.rb

a = 5

case a   #refactored - answer = case a
when 5
  puts "a is 5" #refactored - remove all the puts
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
#reafactored - add 'puts answer'

# ----------------------------------------


# Compared to an if/else statement:
a = 5

if a == 5
  puts "a is 5"
elsif a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

# -----------------------------------------------

# case_with_no_arg_statement.rb

a = 5

case # note no argument provided
when a == 5 # note you have to test each value with a ==
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end