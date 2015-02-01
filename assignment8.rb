# 1
# Request input of a number from the user.
puts 'Howdy, User. Please input a number.'
# Get the number.
number = gets.chomp.to_i
# Iterate the number of times indicated by the
#   user (looping method: i in range).
for number in (1..number)
  # Within the loop, print the number of the iteration.
  print 'Number: ', number, "\n"
end

# 2
# Assigned 'count' to = 1
count = 1
puts 'Howdy again, User. Please input a number.'
number2 = gets.chomp.to_i
# Looping method: while.
while count <= number2
  print 'Number: ', count, "\n"
  count += 1
end

# 3
count = 1
puts 'Howdy once again, User. Please input a number.'
number3 = gets.chomp.to_i
# Looping method: until.
until count == number3 + 1
  print 'Number: ', count, "\n"
  count += 1
end

# 4
count = 1
puts 'Please input a number.'
number4 = gets.chomp.to_i
# Looping method: loop.
loop do
  print 'Number: ', count, "\n"
  count += 1
  break if count == number4 + 1
end

# 5
count = 1
puts 'Input a number.'
number5 = gets.chomp.to_i
# Looping method: .times with counter.
number5.times do |count|
  print 'Number: ', (count + 1), "\n"
end

# 6
count = 1
puts 'Last time. Thanks fo yo number.'
number6 = gets.chomp.to_i
# Looping method: rang with each.
(1..number6).each do |count|
  print 'Number: ', count, "\n"
end
