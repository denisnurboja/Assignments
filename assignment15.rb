# Assignment 15

# Grab questions from assignment15.txt to replace array
# This should take only 2 lines of code to do
questions = open('assignment15.txt', 'a+') do |q|
  File.read('assignment15.txt').split(/\r?\n/)
end
answers = []
questions.each do |question|
  puts question
  response = gets.chomp
  answers.push(response)
end
puts 'Summary of our very quick Q&A:'
puts questions[0] + ' = ' + answers[0]
puts questions[1] + ' = ' + answers[1].capitalize
puts questions[2] + ' = ' + answers[2].capitalize
