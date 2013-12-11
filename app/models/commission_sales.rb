class CommissionSalesPerson < Employee

  COMMISSION_RATE = 0.005
  COMMISSION_RATE_BOBBY = 0.015

  def initialize(name, salary, sales)
    super(name, salary, 'Commission', sales)
  end

  def commission_paid
    @sales.each do |sale|
      if sale.name == @name
        sale.sale * COMMISSION_RATE
      end
    end
  end

  def net_pay
    (@salary.to_i * (1 - TAX_RATE)).round(2)
  end

  def display
    puts "***#{@name}***"
    puts "Gross Pay:  #{@salary}"
    puts "Commission:  #{commission_paid}"
    puts "Net Pay: #{net_pay}"
    puts "***"
    puts ''
  end

end



#class should keep track of CSP and their effective commission rates