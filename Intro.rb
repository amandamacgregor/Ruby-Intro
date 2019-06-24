# Challenges:
# Write a loop that prints from 1 to 20. Try it with all the loops covered in this lesson. Do it again counting down from 20 to 1.

# loop = 1
# loop2 = 20
# times = 20

# times.times do
#     puts loop2
#     loop2 -= 1
# end

# while loop <= 20 
#     puts loop
#     loop += 1
# end

# Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

# def valid(number)
#     if (1..10) === number
#         puts 'Valid'
#     end
# end
# valid(11)

# **FIZZBUZZ** - Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. 
# For numbers which are multiples of both three and five print FizzBuzz
# counter = 1
# 100.times do
#     if (counter % 3 == 0 && counter % 5 == 0)
#         puts 'FizzBuzz'
#     elsif (counter % 3 == 0)
#         puts 'Fizz'
#     elsif (counter % 5 == 0)
#         puts 'Buzz'
#     else 
#         puts counter
#     end
#     counter += 1
# end

# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
# def sum_these_numbers(num1, num2)
#     p num1 + num2
# end
# sum_these_numbers(2, 2)

# Create a method called is_even, which takes a single integer, 
# and which then returns true if the number is even, and false otherwise.
# def is_even(int)
#     if (int % 2 == 0)
#         p 'True'
#     else
#         p 'False'
#     end
# end
# is_even(3)
# is_even(2)

# Create an array of words. Iterate through the array using .each and a block, 
# then print each of those words in all capitals.
# array = ['Billie', 'Jean', 'is', 'not', 'my', 'lover']

# array.each do |item|
#     puts item.upcase
# end

# **Rock, Paper, Scissors**

# Using if, elsif, and else blocks, write a function called rps_game which 
# allows two users to input their moves in "Rock, Paper, Scissors" and 
# which determines the winner (or if a tie occurred).

# p 'Player 1, enter rock, paper or scissors'
# p input1 = gets.chomp
# p 'Player 2, enter rock, paper or scissors'
# p input2 = gets.chomp

# def rps_game(user1, user2)
#     if (user1 == 'rock' && user2 == 'scissors' || user1 == 'paper' && user2 == 'rock' || user1 == 'scissors' && user2 == 'paper')
#         puts 'Player 1 wins!'
#     elsif (user2 == 'rock' && user1 == 'scissors' || user2 == 'paper' && user1 == 'rock' || user2 == 'scissors' && user1 == 'paper')
#         puts 'Player 2 wins!'
#     else
#         puts 'Tie!'
#     end
# end

# rps_game(input1, input2)



# **Valid Date**

# Write a function called valid_date that prompts the user for a date with a month, 
# date, and year (all numerically expressed) and returns 'true' if this date exists and 
# 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). 
# Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.

# p 'Please enter a month:'
# month = gets.chomp.to_i
# p 'Please enter a day'
# day = gets.chomp.to_i
# p 'Please enter a year'
# year = gets.chomp.to_i

# require 'date'
# def valid_date(year, month, day)
#     x = Date.valid_date?(year,month,day)
#     puts x
# end

# valid_date(year,month,day)

# **Password Checker Challenge**
# You are writing the user registration page for a secure web site. On the registration page, the user has to enter a user ID and a password, which has to adhere to the to following criteria:

# User ID and password cannot be the same
# User ID and password have to be at least six characters long
# Password has to contain at least one of: !#$
# User ID cannot contain the following characters: !#$ and space
# Password cannot be the word "password"
# Proceed as follows:

# Challenge: Write a function called same that takes a user ID and a password, and returns true if they are, and false otherwise.
def same(userID, password)
    if (userID != password)
        false
    else (userID == password)
        true
    end
end

# Tests:
# same("joe", "joe")  #true
# same("joe", "joe1")  #false

# Challenge: Write a function called long_enough that checks whether a String is at least six characters long, and returns true if it is, and false otherwise. Tests:
def long_enough(string)
    if (string.length >= 6)
        true
    else
        false
    end
end

# long_enough("12345") #false
# long_enough("123456") #true
# Challenge Write a function called does_not_contain_special which checks to see if !, #, $ is not contained in a given String. Tests:

def does_not_contain_special(str)
    if str.include? ('!') or str.include? ('#') or str.include? ('$')
        false
    else
        true
    end
end

    
# p does_not_contain_special("Hello Friend") # true
# p does_not_contain_special("A#C") # false
# p does_not_contain_special("A!C") # false
# p does_not_contain_special("A$C") # false

# Challenge Write a method called contains_special which checks to see if !, #, $ is contained in a given String.

def contains_special(str)
    if str.include? ('!') or str.include? ('#') or str.include? ('$')
        true
    else
        false
    end
end

# Tests:

# p contains_special("Hello Friend") # false
# p contains_special("A#C") # true
# p contains_special("A!C") # true
# p contains_special("A$C") # true

# Challenge 
# Write a method that inputs user ID and password from the user, and then tells the user if the they are acceptable. 
# Write a main method called validate_password that:
# First lets a user input both user ID and password,
# Then use the methods above to evaluate if the user ID and password combination is acceptable or not
# Tells user what the result is.
def has_digit(str)
    if str.count("0-9") > 0
        true
    else
        false
    end
end

def has_upper_and_lowercase(str)
    if str.count("a-z") >= 1 && str.count("A-Z") >= 1
        true
    else
        false
    end
end

    puts 'Enter user ID'
    userID = gets.chomp
    puts 'Enter password'
    password = gets.chomp
def validate_password(userID, password)
    # puts 'Enter user ID'
    # userID = gets.chomp
    # puts 'Enter password'
    # password = gets.chomp
    
    if same(userID, password) == false && long_enough(password) == true && 
        contains_special(password) == true && has_digit(password) == true && 
        has_upper_and_lowercase(password) == true
        puts "This is a good account setup!"
    elsif same(userID, password) == true
        puts "Make sure your password is different from UserID"
    elsif long_enough(password) == false
        puts "Password must be longer than 6 characters"
    elsif does_not_contain_special(password) == true
        puts "Password must contain at least one special character"
    elsif has_digit(password) == false
        puts "Password must contain at least one number"
    elsif has_upper_and_lowercase(password) == false
        puts "Password must contain at least one upper an one lower case "
    end
end

p validate_password(userID, password)
# Stretch Goal

# Password has to contain at least one digit 
# Task: Write a function using basic functions on String to see if a given String contains contains one of "0","1", "2", "9". Tests:
# def has_digit(str)
#     if str.count("0-9") > 0
#         true
#     else
#         false
#     end
# end


# p has_digit("abc") #false
# p has_digit("a1c") #true
# Super Stretch Goal

# Password has to contain a lower and an uppercase letter. Tests:

# def has_upper_and_lowercase(str)
#     if str.count("a-z") >= 1 && str.count("A-Z") >= 1
#         true
#     else
#         false
#     end
# end


# p has_upper_and_lowercase("abc") # false
# p has_upper_and_lowercase("aBc") # true
# p has_upper_and_lowercase("123") # false
    
