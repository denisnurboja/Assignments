class Company
  attr_accessor :name, :city, :employees
  @@count = 0

  def initialize
    @employees = []
  end

  def employee_name
    @employees = name
  end

  def employee_city
    @employees = city
  end

  def self.count
    @@count += 1
  end

  def fire_employee
    @employees.delete_if == id
  end
end
