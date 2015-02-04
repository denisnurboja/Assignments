class Person
  attr_reader :first_name, :last_name, :age
  attr_accessor :birthday
  require 'Date'
  require 'active_support'
  require 'active_support/all'

  def name(input)
    person_name = input.split
    @first_name = person_name[0]
    @last_name = person_name[1]
  end

  def age(birthday)
    bd = Date.parse(birthday)
    today = Date.current
    age = today.strftime('%Y').to_i - bd.strftime('%Y').to_i
    bd_this_yr = today.strftime('%Y') + '-' + bd.strftime('%m') + \
                 '-' + bd.strftime('%d')
    age -= 1  if today < Date.parse(bd_this_yr)
    @age = age
  end
end
