# Assignment 21

class Person
  attr_reader :first_name, :last_name
  attr_accessor :birthdate
  require 'Date'
  require 'active_support'
  require 'active_support/all'
  @@person_count = 0

  def self.person_count
    @@person_count += 1
  end

  def name=(input)
    person_name = input.split
    @first_name = person_name[0]
    @last_name = person_name[1]
  end

  def age
    calculateAge
  end

  private

  def calculateAge
    dob = Date.today - Date.parse(@birthdate)
    age = dob.to_i / 365
  end
end

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
