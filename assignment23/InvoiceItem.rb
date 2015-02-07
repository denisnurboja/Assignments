# Assignment 23

class InvoiceItem
  attr_accessor :product_name, :sale_price, :quantity, :tax_percentage

  def initialize
    @product_name   = product_name.to_s.capitalize
    @sale_price     = sale_price.to_f
    @quantity       = quantity.to_f
    @tax_percentage = tax_percentage.to_f
  end
end
