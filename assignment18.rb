# Assignment 18

# Require net/http and json.
require 'net/http'
require 'json'
# Query the rotten tomatoes movie search link using API key.
QUERY_URL = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=za4jav7tmcasvd3r6qfeutat'
# Create a condional named 'shutdown' for use in the loop to end the program.
shutdown = 'this is the end'
puts 'Please enter a movie you\'d like to know more about:'
# Begin loop.
loop do
  # Use .gsub to ensure movies > 1 word can be searched by adding %20.
  movie = gets.chomp.downcase
  puts 'Searching...'
  # Set uri to = the QUERY_URL + rotten tomatoes search parameters + movie.
  uri = URI(QUERY_URL + "&q=#{movie.gsub(' ', '%20')}")
  # Performs GET request on URI and is set to 'raw_json'.
  raw_json = Net::HTTP.get(uri)
  # Parses the key 'movies' in the variable 'raw_json'.
  parsed_data = JSON.parse(raw_json)['movies']
  # Loop with .each and use 'output' as the iterator variable.
  parsed_data.each do |output|
    # Print the title and the synopsis by calling the values_at on the keys
    #   'title' and 'synopsis'; remove brackets with .join.
    print 'Movie: ', output.values_at('title').join(' '), "\n"
    print 'Synopsis: ', output.values_at('synopsis').join(' '), "\n"
  end
  # Set the conditions for the loop.
  if movie != shutdown
    puts 'Please enter another movie you\'d like to know more about:'
  else
    puts 'Haha... you\'ve reached THE END.'
    break
  end
end
