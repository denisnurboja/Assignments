class Company
  attr_accessor :name, :city, :employees
  @@count = 0

  def initialize
    @employees = []
  end

  #  Adds the passed employee to the company employee list
  #   def hire_employee(employee)
  #     payroll = @employee
  #   end

  def employee_name
    @employees = name
  end

  def employee_city
    @employees = city
  end

  def self.count
    @@count += 1
  end
end
