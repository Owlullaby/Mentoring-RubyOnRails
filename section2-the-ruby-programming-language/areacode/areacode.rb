dial_book = {
  "Bintulu" => "+60 8",
  "Ipoh" => "+60 5",
  "Johor Bahru" => "+60 7",
  "Kajang" => "+60 3",
  "Kota Baharu" => "+60 9",
  "Kota Kinabalu" => "+60 8",
  "Kuala Lumpur" => "+60 3",
  "Kuala Terengganu" => "+60 9",
  "Kuantan" => "+60 9",
  "Kuching" => "+60 8",
  "Labuan" => "+60 8",
  "Melaka" => "+60 6",
  "Miri" => "+60 8",
  "Muar" => "+60 6",
  "Penang" => "+60 4",
  "Seremban" => "+60 6",
  "Sibu" => "+60 8"
}

# get hash and print out all the keys
def get_city_names(hash)
  puts hash.keys
end

# get hash and key and print out the corresponding value
def get_area_code(hash, key)
  # using .capitalize so both "city" and "City" will be true
  capitalized_key = key.capitalize
  if hash.keys.include? capitalized_key
    puts "The area code for #{capitalized_key} is #{hash[capitalized_key]}"
  else
    puts "No city name in dial book"
  end
end

loop do 
  21.times { print "-"}
  puts
  puts "Welcome to dial book."
  21.times { print "-"}
  puts
  puts "This program will take city names as input from the user and lookup for area code"
  puts "Do you want to lookup an area code based on a city?(Y/N)"
  # using .downcase so y and Y will both be true
  input = gets.chomp.downcase
  break if input != "y"
  puts "Which city do you want the area code for?"
  get_city_names(dial_book)
  puts "Enter your selection"
  city_selection = gets.chomp
  get_area_code(dial_book, city_selection)
end