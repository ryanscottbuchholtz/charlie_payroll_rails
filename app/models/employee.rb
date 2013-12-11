class Employee

require_relative 'commission_sales'
require_relative 'quota_sales'
require_relative 'owner'

  attr_accessor :name, :salary, :role  

  TAX_RATE = 0.30

  def initialize(name, salary, role, sales)
    @name = name
    @salary = salary
    @role = role
    @sales = sales
  end

  def self.employee_load(filename, sales)
    employee_load = []
    CSV.foreach (filename) do |row|
      if row[1] == 'commission'
        employee_load << CommissionSalesPerson.new(row[0], row[2], sales) 
      elsif row[1] == 'owner'
        employee_load << Owner.new(row[0], row[2], sales)
      elsif row[1] == 'quota'
        employee_load << QuotaSalesPerson.new(row[0], row[2], sales)
      else
        employee_load << Employee.new(row[0], row[2], row[1], sales)  #uses the initialize method to create a new instance of Employee for each row in the csv
      end
    end
    employee_load
  end

  def net_pay
    (@salary.to_i * (1 - TAX_RATE)).round(2)
  end

  def display
    puts "***#{@name}***"
    puts "Gross Salary:  $#{@salary}"
    puts "Net Pay:  $#{net_pay}"
    puts "***"
    puts ''
  end


end
