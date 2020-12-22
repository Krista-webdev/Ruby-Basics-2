# Exercise Problems

#1. 
arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.select do |num| 
  if num == number
    puts "This array has a 3 in it";
  end
end

#2. 
#arr 1. will return 1 and the value of arr becomes [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

#arr 2. will return [1, 2, 3] and the value of arr becomes: [["b"], ["a", [1, 2, 3]]]

#3. How do you return the word "example from the following array
arr = [["test", "hello", "world"],["example", "mem"]]
arr.last.first
# .last is the last nested element, .first pulls the first element from that collection

#4. What does each method return in this example?
  #1. arr.index(5)  => 3  .index is the index of the first occurance of the given substring or pattre
  #2. arr.index[5]  => error message
  #3. arr[5]  => 8

#5. What is the value of a, b, and c?
  #1. e
  #2. A
  #3. nil

#6. In attempting to set the value of an item within an array using a string as they key instead of an index number. Instead the code should be writen like this:
names[3] = 'jody'  #instead of 
names['margaret'] = 'jody'

#7. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array 
a = [1, 2, 3, 4, 5]
a.each_with_index do |value, index|
  puts "#{index + 1}. #{value}"
end

#8. Write a program that iterates over an array and builds a new array that is the result of incrementing each value in teh orginal array by a value of 2. 
a = [1, 2, 3, 4, 5]
new_arr = []

a.each { |i| new_arr << i + 2 }

p a
p new_arr 
