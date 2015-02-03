# http://developer.rottentomatoes.com/
# Use Rotten Tomato's movie querying script to create a command line app which
#   prompts the user for a movie title
# Using the entered movie title, search via the API for the movie's synopsis and
#   output to the user
# If more than one movie comes back, show all the movie title matches with their
#   synopsis

require 'net/http'
require 'json'

QUERY_URL = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=za4jav7tmcasvd3r6qfeutat'

puts 'Please enter a movie you\'d like to look up: '
movie = gets.chomp.gsub(' ', '%20')
puts 'Searching...'

uri = URI(QUERY_URL + "&q=#{movie}")
raw_json = Net::HTTP.get(uri)

parsed_data = JSON.parse(raw_json)['movies']

parsed_data.each do |output|
  print 'Movie: ', output.values_at('title').join(' '), "\n"
  print 'Synopsis: ', output.values_at('synopsis').join(' '), "\n"
end
