class Person
  attr_reader :first_name, :last_name, :age
  attr_accessor :birthday
  require 'Date'
  require 'active_support'
  require 'active_support/all'
  @@person_count = 0

  def self.person_count
    @@person_count += 1
  end

  def name(input)
    person_name = input.split
    @first_name = person_name[0]
    @last_name = person_name[1]
  end

  def bd(bdinput)
    @birthday = Date.parse(bdinput)
  end

  def findage(birthday)
    bd = Date.parse(birthday)
    today = Date.current
    age = today.strftime('%Y').to_i - bd.strftime('%Y').to_i
    bd_this_yr = today.strftime('%Y') + '-' + bd.strftime('%m') + \
                 '-' + bd.strftime('%d')
    age -= 1  if today < Date.parse(bd_this_yr)
    @age = age
  end
end

loop do
  p = Person.new
  puts 'Hello user. What is your name?'
  input = gets.chomp
  break if input == '\q'
  p.name(input)
  puts "Nice to meet you #{p.first_name}"
  puts 'When is your birthday? *YYYY/MM/DD or YYYY-MM-DD*'
  bdinput = gets.chomp
  p.bd(bdinput)
  p.findage(bdinput)
  print 'Name: First: ', p.first_name.capitalize, ' | Last: ', \
        p.last_name.capitalize, "\n"
  print 'You were born on ', p.birthday.strftime('%A, %B %d, %Y, '), \
        "which makes you #{p.age} years old today.", "\n"
  print 'You are User#: ', Person.person_count, "\n"
  break if input == '\q'
end
