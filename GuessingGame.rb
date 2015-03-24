# Assignment 13

# Randomly generate a number and set it to the variable answer.
answer = rand(1..100)
# Start the count at zero
count = 0
puts 'Guess a number randomly choosen this app, ranging from 1 to 100.'
# Using a loop do conditional to reprompt user to input until guess == answer.
loop do
  guess = gets.chomp.to_i
  count += 1
  if guess > answer
    puts 'Your guess is too high. Guess lower please.'
  elsif guess < answer
    puts 'Your guess is too low. Guess higher please.'
  else
    puts "Finally! It only took you #{count} guesses."
    # Use break, exit aborts the entire app. So, if you had any other code to
    #   run after the loop, it wouldn't work.
    break
  end
end
