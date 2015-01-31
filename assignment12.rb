# Assignment 12
answers = []
questions = ['How old are you?', 'What is your name?', 'Where are you from?']
questions.each do |question|
  puts "#{question}"
  response = gets.chomp
  answers.push("#{response}")
end
puts 'Summary of our very quick Q&A:'
puts questions[0] + ' = ' + answers[0]
puts questions[1] + ' = ' + answers[1].capitalize
puts questions[2] + ' = ' + answers[2].capitalize
