#Ruby Hashes Exercises

#1. 
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |key|
  key == :sisters || key == :brothers
end

immediate_family.to_a
puts immediate_family

#2. merge! mutates the variable
student = {
  name: "Judy", age: 19
}
new_student = {
  name: "Bob", age: 20
}

student.merge!(new_student)
puts student
puts new_student
#returns {:name=> "Bob", :age=>20} and student = {:name=> "Bob", :age=>19}
#-------------------------------------#
#merge doesn't mutate the variable
student = {
  name: "Judy", age: 19
}
new_student = {
  name: "Bob", age: 20
}

student.merge(new_student)
puts student
puts new_student
#returns {:name=>"Judy", :age=>19} and {:name=>"Bob", :age=>20}

#3. Write a program that loops through a hash and prints all the keys. Then write a program that does the same thing except prints all the values. Finally write a program  that prints both:
animals = {cat: "meow", dog: "woof", bird: "tweet", snake: "ssss"}
puts animals.keys  # animals.each_key { |key| puts key }
puts animals.values  # animals.each_value { |value| puts value }

animals.each do |key, value|
  puts "#{key}: #{value}"
end

#4. person [:name]

#5. Write a program with a method that can find out if a hash contains a specific value:
animals = {cat: "meow", dog: "woof", bird: "tweet", snake: "ssss"}

if animals.has_value?("meow")
  puts "That does exist"
else
  puts "That doesn't exist"
end

#6. The first hash is using a symbol for its key. The second hash is calling the variable x="hi there", the string from this variable becomes the key in the hash. 

#7. B there is no method called 'keys'

#8. Write a program that prints out a group of words that are anagrams (words that have the same exact letters in them but in a different order)

#Couldn't figure this one out - did walkthrough solution:

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#Break down the problem - iterate over they array
#Sort each word into alphabetically order as you iterate through the array
#If they key already exists you want to append the current word into the value (array)
#Otherwise, you want to create a new key with the sorted word

result = {} #created an empty results hash that we will fill as we iterate through the array
words.each do |word|      #iterate over the array using method each
  #split into an array of characters and sort those characters and join these characters back into a string
  key = word.split('').sort.join #store in a variable called key
  if result.has_key?(key)   #if the result hash already has this key using has_key? method and pass in key variable
    result[key].push(word) #then push that word into the result array that will be the value associated with this key
  else   
    result[key] = [word]   #create a new key in the hash with this sorted word. Assign its value as an array and place the current word into that array
  end
end 

#Our list of anagrams is now stored in the results hash and we only want the values outputed:
result.each_value do |v| # for each_value, puts a divider line and the value
  puts "-------"
  p v
end  