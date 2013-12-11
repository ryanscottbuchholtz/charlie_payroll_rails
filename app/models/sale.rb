require 'csv'

class Sale
  attr_reader :name, :sale

  def initialize(name, sale)
    @name = name
    @sale = sale
  end

  def self.load_sales(filename)
    sales_data = []
    CSV.foreach (filename) do |row|
      sales_data << Sale.new(row[0], row[1])
    end
    sales_data
  end

  def self.sales_for(sales, name)
    found_sales = []

    sales.each do |sale|
      if sale.name == name
        found_sales << sale
      end
    end

    found_sales
  
  end

end
