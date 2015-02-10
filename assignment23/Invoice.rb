class Invoice
  attr_accessor :items, :invoice_id
  @@count = 0

  # Sets @items to an array to hold the invoice items.
  def initialize
    @items = []
  end

  def sub_total
    @items.sum { |i| i.sale_price.to_f * i.quantity.to_i }
  end

  # Divide tax by 100 to make it easier to view 7% vs 0.07%.
  def tax_percentage
    @items.sum do |i|
      i.sale_price.to_f * i.quantity.to_i * (i.tax_percentage.to_f / 100)
    end
  end

  # Split the invoice items up by 'i' variable. Pre-format for output on 'main'.
  def each_invoice
    @items.each do |i|
      puts ' '
      puts "| Invoice Item #: #{Invoice.count}"
      print '| Product: ',
            i.product_name.capitalize.split.map(&:capitalize).join(' '), \
            ' | Price: ', number_to_currency(i.sale_price), ' | Quantity: ',
            i.quantity, ' | Tax: ', i.tax_percentage, '%', "\n"
    end
  end

  # Creates a randomly generated invoice id for tracking puposes.
  def invoice_id
    @id = print '| Invoice #: ', 'INV' + rand(1..999_999).to_s + 'CE |', "\n"
  end

  # Use reject method to remove invoice item 'quantity' if it is a 0 value.
  def reject_zeros
    @items.reject { |i| i.quantity.to_i == 0 }
  end

  # Create a counter to display next to each invoice product.
  def self.count
    @@count += 1
  end
end
