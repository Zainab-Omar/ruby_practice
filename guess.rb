#!/urs/bin/env ruby

# ask user for input
# say hello and explain rules
# pick a random number and let user guess and check guess correct or not 3 times

puts "---------------------------"
puts "|  Ruby Guessing Game     |"  
puts "---------------------------"
puts "What is your name? "
name = gets.chomp
puts "Hello #{name}\n I will choose a number between 1 and 10 \n and you will have three chances to guess it. \n okay, I have my number."

guess = 0
my_number = rand(10) + 1

while guess < 3
    puts "Guess #{guess + 1}: "
    input = gets.chomp
    if input.to_i == my_number
        puts "Congarts Your guess is right!"
        break
    else
        puts "Sorry, that was not it"
    if guess == 2
        puts "That was your last guess."
    puts "My number was #{my_number}."
    end
end
    guess +=1
end


puts "Goodbye!"
