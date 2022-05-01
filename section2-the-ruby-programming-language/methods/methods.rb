# define methods for arithmetic calculations
def add(first_num, second_num)
    first_num.to_f + second_num.to_f
end

def subtract(first_num, second_num)
    first_num.to_f - second_num.to_f
end

def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
    first_num.to_f / second_num.to_f
end

def mod(first_num, second_num)
    first_num.to_f % second_num.to_f
end

puts "Simple Calculator"
20.times{ print "-" }
puts

# getting user's first value
puts "Please enter your first number"
first_number = gets.chomp

# getting user's second value
puts "Please enter your second number"
second_number = gets.chomp

# asking for arithmetic operation to perform
puts "What do you want to do?"
puts "Enter 1 for addition, 2 for subtraction, 3 for multiplication. 4 for division and 5 for mod."
user_entry = gets.chomp

# using branching to check for different conditions (arithmetic operations chosen)
if user_entry == "1"
    puts "You have chosen addition"
    result = add(first_number, second_number)
	puts "The result of addition is #{result}"
elsif user_entry == "2"
    puts "You have chosen subtraction"
    result = subtract(first_number, second_number)
	puts "The result of subtraction is #{result}"
elsif user_entry == "3"
    puts "You have chosen multiplication"
    result = multiply(first_number, second_number)
	puts "The result of multiplication is #{result}"
elsif user_entry == "4"
    puts "You have chosen division"
    result = divide(first_number, second_number)
	puts "The result of division is #{result}"
elsif user_entry == "5"
    puts "You have chosen mod"
    result = mod(first_number, second_number)
	puts "The result of mod is #{result}"
else
    puts "Invalid entry"
end