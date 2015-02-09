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
company.name = gets.chomp.split.map(&:capitalize).join(' ')
print 'Company City: '
company.city = gets.chomp.split.map(&:capitalize).join(' ')
loop do
  employee = Employee.new
  puts ' '
  puts 'Add a new hire:', "\n"
  print 'Employee Name: '
  employee.name = gets.chomp.split.map(&:capitalize).join(' ')
  break if employee.name.empty?
  print 'Employee City: '
  employee.city = gets.chomp.split.map(&:capitalize).join(' ')
  company.employees.push(employee)
  puts ' '
  print 'To finalize adding an employee, please hit the ENTER key.' \
        ' Otherwise, please add more hires.', "\n"
end
puts "\n| #{company.name} Employee Catalog:"
company.employees.each do |e|
  puts ' '
  puts "| Employee ID #: #{Company.count}"
  print '| Employee name: ', e.name, ' | City: ', e.city, "\n"
end
loop do
  puts ' '
  print 'Press ENTER to exit the program or "X" to remove an employee: '
  response = gets.chomp.capitalize
  break if response.empty?
  if response == 'X'
    loop do
      puts ' '
      print 'Input employee ID number to fire. Otherwise, hit the ENTER key' \
      ' to go back one step. '
      fired = gets.chomp
      break if fired.empty?
      # removes employee from company employee array
      company.fire_employee
      # Displays updated directory
      puts "\n| #{company.name} Employee Catalog:"
      company.employees.each do |e|
        puts ' '
        puts "| Employee ID #: #{Company.count}"
        print '| Employee name: ', e.name, ' | City: ', e.city, "\n"
      end
    end
end
end
