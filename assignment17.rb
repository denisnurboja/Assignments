# Assignment 17

require 'json'

file = File.read('assignment17.json')

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
