# Assignment 16

# Net/http are required to run the script.
require 'net/http'
uri = URI('http://www.scifiscripts.com/scripts/starship_troopers.txt')

# Open the text file with write access and create a block to put the response
#   into the empty 'assignment16.txt' file.
open('assignment16.txt', 'w') do |f|
  response = Net::HTTP.get(uri)
  f.puts response
end
