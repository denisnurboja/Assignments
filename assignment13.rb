# Create a guessing game
# The user must guess the number chosen by the app
# Provide feedback to the user as to if their guess
#   is lower or higher than the number
# Count the number of guesses and output at the end

answer = rand(1..100)
count = 0
puts 'Guess a number randomly choosen this app, ranging from 1 to 100.'
# Using a loop do conditional to reprompt user to input until guess == answer
loop do
  guess = gets.chomp.to_i
  count += 1
  if guess > answer
    puts 'Your guess is too high. Guess lower please.'
  elsif guess < answer
    puts 'Your guess is too low. Guess higher please.'
  else
    puts "Finally! It only took you #{count} guesses."
    break
  end
end
