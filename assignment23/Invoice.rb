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

  # Create an instance method in Invoice that will calculate a total of all it's
  #   invoice items.
  # Use reject or select methods in order to remove any InvoiceItem objects
  #   that have a zero quantity.
  def total_items
    total = @items.reject { |i| i == 0 }
    t = total.sum
  end
  # Not required, but creates a count to show how many invoice created.
  def self.count
    @@count += 1
  end
  # Show a sub-total without the tax, then a line item for the tax, then the
  #   total.
  # def itemization
    # subt = t[1] * t[2]
    # tax = subt * t[3]
    # tot = subt + tax
  #end
end
