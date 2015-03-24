load 'company.rb'
load 'employee.rb'

# Prompt the user. This creates a new company and company name.
puts ' '
puts 'Let\'s add a company and then hire and fire employees!'
company = Company.new
print 'What is the company name? '
company.name = gets.chomp.split.map(&:capitalize).join(' ')
print 'Where is the company? '
company.city = gets.chomp.split.map(&:capitalize).join(' ')
puts ' '

# Create a new employee with an id number, name, and city inside of a loop.
loop do
  employee = Employee.new
  employee.employee_id = rand(1..999_999).to_s + 'RC' + rand(1..99).to_s
  puts 'Hire a new employee:'
  print 'Employee name? '
  employee.name = gets.chomp.split.map(&:capitalize).join(' ')
  break if employee.name.empty?
  print 'Employee city? '
  employee.city = gets.chomp.split.map(&:capitalize).join(' ')
  puts ' '
  puts 'To continue, enter more hirees. To exit, hit the ENTER key.'
  puts ' '
  # Push the employee into the employees array inside of the Company class.
  company.employees.push(employee)
end

# Output a summary of the company and new hires.
puts ' '
puts '______________________________________________'
puts '| Summary of the company and it\'s new hires: |'
puts '----------------------------------------------'
puts ' '
print ' Company Name: ', company.name, ' | Company City: ', company.city, "\n"
puts ' '
# Uses pre-formated employee list from the Company class to save tons of time.
company.list_of_employees
puts ' '

# Initializes the fire method inside of a loop if 'x' is entered.
loop do
  puts ' '
  print 'Press ENTER to exit the program or "X" to remove an employee: '
  response = gets.chomp.capitalize
  break if response.empty?
  if response == 'X'
    # Initializ loop to fire employee after 'x' is entered.
    loop do
      puts ' '
      print 'Input employee ID number to fire. Otherwise, hit the ENTER key' \
      ' to go back one step. '
      # Sets variable 'fired'.
      fired = gets.chomp
      break if fired.empty?
      # Calls on fire method inside of Company class with the argument 'fired'.
      company.fire_employee(fired)
      puts ' '
      puts '______________________________________________'
      puts '| Updated Employee Roster:                   |'
      puts '----------------------------------------------'
      puts ' '
      # Displays updated employee roster.
      company.list_of_employees
    end
  end
end

# Ends the program with a short message.
puts ' '
puts 'You have exited the program. Have a nice day.'
puts ' '
