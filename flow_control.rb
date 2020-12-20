# #1
# (32 * 4) >= 129  # false
# false != !true   # false
# true == 4  # false
# false == (847 == '874')  # true
# (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false  # true

#2

def greeting(string)
  if string.length >= 10
    puts string.upcase
  else
    puts string
  end
end

  greeting("Hello")
  greeting("Hello World!")


  #3
  puts "Give a number between 0 and 100"
  answer = gets.chomp.to_i
    if answer == 0 || answer <51
      puts "Your number is between 0 and 50"  # puts "#{answer} is between 0 and 50"
    elsif answer > 50 && answer < 101
      puts "Your number is between 51 and 100"
    else 
      puts "Your answer is above 100"
    end




    # 4
  #1. "False"
  #2. "Did you get it right?"
  #3. "Alright now!"


# 5
# You need to end both the method and the if statement, need to add another end

# 6
#1. false  #Incorrect - it would raise an error!
#2. false
#3. false
#4. true
#5. false
#6. true