# Set's the class of 'Company' with name, city, and employees (which is an [])
#   attributes.

class Company
  attr_accessor :name, :city, :employees

  # Initalizes employees attribute to be an array.
  def initialize
    @employees = []
  end

  # Creates the fire method by using 'delete_if' and the variable 'fired'.
  # Create a block of 'f' and calls on '.employee_id' from the [] to compare
  #   it againsts the gets.chomp from the 'main.rb' section.
  def fire_employee(fired)
    @employees.delete_if { |f| f.employee_id == fired }
  end

  # This is a lifesaver. Makes it easier to display the employee roster instead
  #   of having to type it each time in the 'main.rb'.
  def list_of_employees
    @employees.each do |e|
      print '| Employee ID: ', e.employee_id, ' | Employee Name: ', e.name, \
            ' | Employee City: ', e.city, "\n"
    end
  end
end
