#1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |num|
  puts num
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version
arr.each { |number| puts number }



#2. Same as above, but only print out values greater than 5.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def greaterThan(numbers)
  numbers.each do |num|
    if num > 5 
      puts num     
    end
  end
end

greaterThan(arr)

# one line version
arr.each { |number| puts number if number > 5 }



#3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |number| 
  number.odd?
end

puts new_array

# one line version
new_array = arr.select { |number| number % 2 != 0 }



#4. Append 11 to the end of the original array. Prepend 0 to the beginning.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.push(11)
arr.unshift(0)

p arr



#5. Get rid of 11. And append a 3.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.push(11)
arr.unshift(0)
arr.pop
arr.push(3)

p arr



#6. Get rid of duplicates without specifically removing any one value.
arr = [1, 1, 2, 2, 2, 3, 4, 4, 5, 5, 5]

p arr.uniq



#7. What's the major difference between an Array and a Hash?
# The major difference between an array and a hash is that a hash stores key-value pairs in comparison to arrays which just store an ordered list of elements. Hashes can be referenced by a key whereas an array is referenced by index. 



#8. Create a Hash, with one key-value pair, using both Ruby syntax styles.
hash_one = {:name => "Joe"} #<= Old Version
hash_two = {name: "Joe"}  #<= New Version



#9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.

# 2. Add to this hash the key:value pair `{e:5}`

# 3. Remove all key:value pairs whose value is less than 3.5
h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e] = 5
h.delete_if do |key, value|
  value < 3.5
end



#10. Can hash values be arrays? Can you have an array of hashes? (give examples)

# yes to both - solution examples
# hash values as arrays
# hash = {names: ['bob', 'joe', 'susan']}

# array of hashes
# arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]



#11. Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
         ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }



#12. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
p "Joe's email is: #{contacts["Joe Smith"][:email]}"
p "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"


#13. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |letter| letter.start_with?("s")}

p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |letter| letter.start_with?("s") || letter.start_with?("w")} #my solution lol
# LS solution: letter.start_with?("s", "w")  -- guess I should have looked at documentation!

p arr



#14. Take the following array:
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

 # and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
 a = a.map { |word| word.split }  #without an argument to split method, it will split on the whitespace
 a = a.flatten  #flatten changes ["white", "snow"]["winter", "wonderland"] to ["white", "snow", "winter", "wonderland"]
# # without assigning (a = a.map and a = a.flatten), the output would remain the same as the original a array - these methods create a new array but don't mutate the caller
 p a
 


 #15. What will the following program output?
 hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# "These hashes are the same!"
# Why are they the same? Each hash contains the same key:value pairs but use different syntax to associate a key with a value (shoes: "nike" vs. :shoes => "nike") 
# Hashes don't rely upon order like in arrays, but instead, hashes retrieve values based on the keys


#16. Challenge: In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.
# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}

# As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.
# Could not figure this out - 
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"]]

contacts = { "Joe Smith" => {} }

# #1 create a new array with your keys:
fields = [:email, :address, :phone]

# #2 
contacts.each { |name, hash|
    fields.each { |field|
      hash[field] = contact_data.shift } 
    }

# array.shift returns the first element and then removes it from the array
# hash.first method returns the first key/value pair that was added to the hash as an array of two items [key, value]

# BONUS
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

p contacts