# Assignment 23

require 'active_support'
require 'active_support/all'

class Invoice
  # The invoice class should have a getter and setter for an attribute called
  #   :items to hold an array of all the InvoiceItems.
  attr_accessor :items
  @@count = 0

  def initialize
    @items = []
  end

  def sub_total
    @items.sum { |i| i.sale_price.to_f * i.quantity.to_i }
  end

  def tax_percentage
    @items.sum { |i|
      i.sale_price.to_f * i.quantity.to_i * (i.tax_percentage.to_f / 100) }
  end

  def each_invoice
    @items.each { |i| yield i }
  end

  def reject_zeros
    @items.reject { |i| i.quantity.to_i == 0 }
  end

  def self.count
    @@count += 1
  end
end
