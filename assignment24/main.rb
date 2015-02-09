# Take the Employee and Company classes, and create functionality to allow the company to hire and fire an employee.
# Create a Ruby app that will use those classes to do the following:

# prompt the user to enter information for the company.

# prompt the user to enter each employee. It will then "hire" each of them.
# show a list of employees, with ids, then ask the user if they would like to fire an employee by entering that id.
# fire the employee by id and show an updated list with that employee no longer in it.

load 'employee.rb'
load 'company.rb'

company = Company.new
puts ' '
puts 'Enter information about the company:', "\n"
print 'Company Name: '
company.name = gets.chomp
print 'Company City: '
company.city = gets.chomp
loop do
  employee = Employee.new
  puts ' '
  puts 'Add a new hire:', "\n"
  print 'Employee Name: '
  employee.name = gets.chomp
  break if employee.name.empty?
  print 'Employee City: '
  employee.city = gets.chomp
  company.employees.push(employee)
  puts ' '
  print 'To finalize adding an employee, please hit the ENTER key' \
        ' Otherwise, please input additional items.', "\n\n"
end
company.employees.each do |e|
  puts ' '
  puts "| Employee ID #: #{Company.count}"
  print '| Employee name: ', e.name.capitalize, ' | City: ', \
        e.city.capitalize, "\n"
end
