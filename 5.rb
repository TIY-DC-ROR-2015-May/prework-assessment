# Program asks the user to type a sentence and sorts it (so if you type this becomes efhiiopsttuyy).

puts "Please enter a string to be sorted: "
input = gets.chomp
input = input.split(//)
sorted = input.sort.join
puts "Sorted string is : #{sorted.strip}"