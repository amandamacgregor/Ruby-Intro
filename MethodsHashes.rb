# **Arithmetic Challenge**
# Remember that floats are numbers with a decimal point whereas integers have no fractional part so in Ruby, 1 and 1.0 are different types of things with slightly different behaviors.

# Just as you did with Javascript, try these, both with integers and floats:

# Add, subtract, multiply and divide some numbers - any combination of numbers
# puts 2 + 2
# puts 2.0 + 2
# puts 5 - 2
# puts 5.2 - 2.2
# puts 3 * 5
# puts 13.2 * 5.1
# puts 15 / 3
# puts 30.1 / 28.3

# Find the remainder of dividing two numbers using the modulo operator (%)
# puts 15 % 2

# Divide a number by 0
# puts 5 / 0

# Divide 0 by 0
# puts 0 / 0


# **Variables Challenge**

# Here are a few exercises for you to practice using variables:

# Set a variable called my_favorite_number equal to your favorite number.
# my_favorite_number = 3

# Calculate what your favorite number divided by 2 is.
# puts my_favorite_number / 2
# p my_favorite_number

# Set another variable called someones_favorite equal to 13
# someones_favorite = 13

# Change the value of someones_favorite to 7
# someones_favorite = 7
# p someones_favorite

# Subtract your favorite number from someones Change the value of my favorite number to be 26 times its current value
# my_favorite_number = (someones_favorite - my_favorite_number) * 26
# puts my_favorite_number

# ** Strings Challenge**

# For this exercise, try out some of the Ruby string methods for yourself.
# new_string = 'hi there my name is billy'
# puts new_string
# .upcase
# puts new_string.upcase

# .reverse
# puts new_string.reverse

# .include?
# puts new_string.include?'i'

# .capitalize
# puts new_string.capitalize

# create a variable and put it into a string using string interpolation
# new_var = 'challenge'
# puts "I have a feeling this won't be a huge #{new_var.upcase}!"


# Arrays Challenge

# Create an array with ten of your favorite movies
# fav_movies = ['The Godfather', 'The Blues Brothers', 'Jaws', 'An Unmarried Woman', 'Blue Velvet', 'Scenes From a Marriage', 'Wild Strawberries', 'The Fugitive', 'Twister', 'Bridge Over the River Kwai']
# puts fav_movies
# From that array, extract your top 3 movies in a new array
# top_three = [fav_movies[1], fav_movies[0], fav_movies[2]]
# puts top_three

# Find an expression that tells you how many elements are in the array
# puts fav_movies.length
# puts top_three.length

# Reverse an array, try out slices, how to rotate them, and how to get a random element from the array
# puts fav_movies.reverse
# fav_movies << 'The Great Escape'
# puts fav_movies
# puts fav_movies.sample
# puts fav_movies[5..]