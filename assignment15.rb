# Assignment 15

questions = File.readlines('assignment15.txt').each(&:chomp!)
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
