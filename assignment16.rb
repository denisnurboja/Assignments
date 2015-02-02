# Assignment 16

# Pick a screenplay from this list, http://www.scifiscripts.com/ (in text)
# Read in the screenplay and write it to a local file

require 'net/http'
uri = URI('http://www.scifiscripts.com/scripts/starship_troopers.txt')

open('assignment16.txt', 'w') do |f|
  response = Net::HTTP.get(uri)
  f.puts response
end
