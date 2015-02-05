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
