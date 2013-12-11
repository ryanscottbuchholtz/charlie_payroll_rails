class QuotaSalesPerson < Employee

  def initialize(name, salary, sales)
    super(name, salary, 'Quota', sales)

  end

  def monthly_quota_met?(sales) 
  end

  def net_pay
    (@salary.to_i * (1 - TAX_RATE)).round(0)
  end

  def display
    puts "***#{@name}***"
    puts "Gross Pay:  #{@salary}"
    puts "Net Pay: #{net_pay}"
    puts "***"
    puts ''
  end
  

end

#the quota sales person class should track who is a QSP, what their monthly quotas are
#and if they met their sales goal.  