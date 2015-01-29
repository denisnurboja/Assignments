# Prompt user to enter any text they want.
puts "Please enter anything you want."
# Set string equal to gets.chomp and convert it to a string.
string = gets.chomp.to_s
# Set weird_string to equal the user inputed string with removed whitespace.
# Reversed it, removed last character, and then reversed again.
weird_string = string.lstrip.rstrip.reverse.chop.reverse
# Show user the outcome of the script.
print weird_string, "\n"
# Set word_count equal to weird_string and split it into words.
word_count = weird_string.split
# Print it with the .count method.
print word_count.count, "\n"
