class SalesController < ApplicationController
  def index
    # make your sales objects available to the correlating view here
    @sales = Sale.load_sales('db/sales.csv')
  end
end
