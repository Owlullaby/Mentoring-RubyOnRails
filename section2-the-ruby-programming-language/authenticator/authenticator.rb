# prompts for username and password
# you can attempt for max 3 times

# create hash using symbol as keys
users = [
    { username: "Jack", password: "beanstalk"},
    { username: "Marry", password: "littlelamb"}
]

puts "Welcome to the authenticator"
28.times { print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

# authenticate function comparing username and password inputs with the hash
def auth_user(username, password, users)
    users.each do |user|
        if user[:username] == username && user[:password] == password
            puts "Welcome back, #{ username }!"
            puts user
            break
        else
            puts "Credentials were not correct"
            break
        end
    end
end

# while loop for 3 attempts max
attempts = 0
# less than 3 because index starts at 0 so 0,1,2 = three times
while attempts < 3
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 3 