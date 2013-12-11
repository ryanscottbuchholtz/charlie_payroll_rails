MONTHLY_QUOTA = 250000
OWNER_BONUS = 1000

class Owner < Employee

  
  def initialize(name, salary, sales)
    super(name, salary, 'owner', sales)

  end

  def month_sales
    gross_monthly_sales = []

    @sales.each do |sale|
      gross_monthly_sales << sale.sale.to_i
    end
    
    gross_monthly_sales.inject(0) {|sum, item| sum + item}

  end

  def bonus_payable
    if month_sales > MONTHLY_QUOTA
      OWNER_BONUS
    else
      0
    end
  end

  def net_pay
    (((@salary.to_i) + bonus_payable) * TAX_RATE).round(2)
  end

  def display
    puts "***#{@name}***"
    puts "Gross Pay:  #{@salary}"
    puts "Bonus:  #{bonus_payable}"
    puts "Net Pay: #{net_pay}"
    puts "***"
  end


end



#the owner class should know who the owners are, and if they receive their bonus - which is only
#paid when the monthly quota is met.