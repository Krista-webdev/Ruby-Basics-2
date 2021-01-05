#1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
def has_lab?(string)
  if /lab/.match(string)
    puts string
  else
    puts "Not a match"
  end
end
has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

#2. Nothing will be printed to the screen because the block is never activated with a call method.

#3. Exception handling handles any errors within our code and it solves the problem of not ending our program when an error is encounterd.

#4. Modify the code from example 2 so that it will execute properly:
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#5. the method parameter block is missing the ampersand (&) sign that allows a block to be passed as a parameter - hence the error ArgumentError from rb1 - line 1