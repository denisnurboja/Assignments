# Assignment 21

load 'person.rb'

loop do
  p = Person.new
  puts 'Hello user. What is your name?'
  input = gets.chomp
  break if input == '\q'
  p.name = input
  print ' ', "\n", 'Nice to meet you ', p.first_name.capitalize, '.', "\n"
  print 'When were you born? *YYYY/MM/DD or YYYY-MM-DD*', "\n"
  p.birthdate = gets.chomp
  bday = Date.parse(p.birthdate)
  bd = bday.strftime('%A, %B %d, %Y, ')
  print ' ', "\n", 'Name: First: ', p.first_name.capitalize, ' | Last: ', \
        p.last_name.capitalize, "\n"
  print 'You were born on ', bd, "which makes you #{p.age} " \
        'years old today.', "\n"
  print 'You are User#: ', Person.person_count, "\n", ' ', "\n"
  break if input == '\q'
end
