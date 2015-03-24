# Assignment 12

# Create an array of questions (Strings)
questions = ['How old are you?', 'What is your name?', 'Where are you from?']
# Create new array to hold 'answers'
answers = []
# Iterate over the array using each, asking each question to the user
questions.each do |question|
  puts question
  response = gets.chomp
  # Push responses into the 'answers' array
  answers.push(response)
end
puts 'Summary of our very quick Q&A:'
# Create Hash from the arrays: Questions(keys)/Answers(values)
summary = Hash[*questions.zip(answers).flatten]
# Iterate over the hash using each and print the summary of the Q&A
summary.each do |thequestions, theanswers|
  puts "The question was: #{thequestions}"
  puts "- Your answer was: #{theanswers.capitalize}"
end
