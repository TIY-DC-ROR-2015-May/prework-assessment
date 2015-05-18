require 'pry'

puts "Give me a sentence > "
sentence = gets.chomp

letters = sentence.split("")
# letters_without_spaces = letters.select { |c| ('a'..'z').include?(c) }
sorted_letters = letters.sort
sorted_string = sorted_letters.join

puts "Result is: #{sorted_string}"