def greeting(name)
  puts "Hello #{name}!"
end

greeting("Krista")

# 2. What do the following expressions evaluate to?
#  x = 2  => 2
#  puts x = 2   => 2 nil
# p name = "Joe"    => "Joe"
# four = "four"   => "four"
# print something = "nothing"   => nil

def multiply(a,b)
  puts a*b
end

multiply(5,2)

# What will this code print to the screen:
# def scream(words)
#   words = words + "!!!!"
#   return
#   puts words
# end

# scream("Yippeee")
# It prints nothing!

# Edit the above code so it will print words to the screen:
def scream(words)
  puts words + "!!!!"
end

scream("Yippee")

#there are the wrong number of arguments given to run the method "calculate_product" - only one was given instead of 2