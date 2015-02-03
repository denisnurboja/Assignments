# Assignment 17

# Require JSON to parse data in Ruby.
require 'json'
# Read external JSON file and set it to the variable 'file'.
file = File.read('assignment17.json')
# Parse the 'questions' object inside of the JSON 'file'; leaving out the
#   'questions' object will print all 3 questions and error out.
questions = JSON.parse(file)['questions']

answers = []
questions.each do |question|
  puts question
  response = gets.chomp
  answers.push(response)
end

puts 'Summary of our very quick Q&A:'
summary = Hash[*questions.zip(answers).flatten]

summary.each do |thequestions, theanswers|
  puts "The question was: #{thequestions}"
  puts "- Your answer was: #{theanswers.capitalize}"
end
