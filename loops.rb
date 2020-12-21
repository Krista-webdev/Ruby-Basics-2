# Exercises for Loop Section

#1. In this exercise, the x references an array and returns an element from the array each time the each method is invoked

#2. A while loop that takes an input from the user, performs an action, and only stops when teh user types "STOP"
question = "How are you?"
puts question
gets.chomp.upcase

while question != "STOP" do
  puts "Want me to ask you again? Say stop ;)"
  question = gets.chomp.upcase
end
# I had trouble thinking of a "question" to ask, so had to have help with solutino


#3. Write a method that counts down to 0 using recursion
def countdown(start)
  if start > 0
    puts start
    countdown(start -1)
  else
    puts start
  end 
end

countdown(-3)
countdown(10)
#Still don't understand recursion! But the code works - even if I'm not sure why!