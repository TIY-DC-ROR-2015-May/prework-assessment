require 'pry'

puts "Give me a sentence > "
sentence = gets.chomp

letters = sentence.split("")
sorted_letters = letters.sort 
sorted_string = sorted_letters.join

puts "Results is: #{sorted_stringrub} "

bind.pry