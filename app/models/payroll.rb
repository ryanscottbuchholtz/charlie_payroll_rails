require 'csv'

require_relative 'employee'
require_relative 'commission_sales'
require_relative 'owner'
require_relative 'quota_sales'
require_relative 'sale'

#--------------program---------------------#

sales = Sale.load_sales('sales.csv')

employees = Employee.employee_load('empfile.csv', sales) #employees is an array of <employee objects>.

#----------------testing-----------------#

# employees.each do |employee|  #testing that I have an array of employee objects that I can extract data from.
#   puts "***#{employee.name}***"
#   puts "***#{employee.salary}***"
#   puts "***#{employee.role}***"
#   puts "***#{employee.net_pay}***"
# end

employees.each do |employee|
    employee.display
end
