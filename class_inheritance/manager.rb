require_relative "employee.rb"
class Manager < Employee
  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end

  def bonus(multiplier)
    
  end
end