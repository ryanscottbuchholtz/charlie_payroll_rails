class EmployeesController < ApplicationController
  def index
    # make your employee objects available to the correlating view here
    @sales = Sale.load_sales('db/sales.csv')
    @employee = Employee.employee_load('db/empfile.csv', @sales)

  end
end
