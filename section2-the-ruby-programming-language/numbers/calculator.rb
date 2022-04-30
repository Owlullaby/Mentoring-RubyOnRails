# prints the title
puts "Simple calculator"
# added a line using 25 times of "-"
25.times { print "-"}
# going to the next line
print "\n"

# asking for the first number input from user
puts "Enter the first number:"
num_1 = gets.chomp
# asing for the second number input from the user
puts "Enter the second number:"
num_2 = gets.chomp

# outputs the first number + - x / % by the second number
puts "The first number added by the second number is #{num_1.to_f + num_2.to_f}"
puts "The first number deducted by the second number is #{num_1.to_f - num_2.to_f}"
puts "The first number multiplied by the second number is #{num_1.to_f * num_2.to_f}"
puts "The first number divided by the second number is #{num_1.to_f / num_2.to_f}"
puts "The first number mod the second number is #{num_1.to_f % num_2.to_f}"