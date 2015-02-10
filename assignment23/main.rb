# Require active_support and NumberHelper to help display sum and currency.
require 'active_support'
require 'active_support/all'
include ActiveSupport::NumberHelper

load 'invoice.rb'
load 'invoiceitem.rb'

# Part of the bonus. Make it look like a real app. Not sure if this was needed.
puts ' '
puts '# == Synopsis
#   This is Assignment 23. It is an invoice app.
#   Enter the product name, sale price, quantity, and tax percentage.

# == Bonus
#   Make the app look like a real-word invoice application.
#
# == Usage
#   Just start typing the invoice items. Hit ENTER key on Product Name to exit.
#
# == Author
#   Tony Gaeta
#
# == Copyright
#   Copyright (c) 2015 Tony Gaeta. Licensed under the MIT License:
#   http://www.opensource.org/licenses/mit-license.php'

# Prompt the user to begin the invoice.
puts ' '
print '~~ Begin Invoice ~~', "\n"
inv = Invoice.new

# Loop the invoice items inside of the new invoice.
loop do
  invitem = InvoiceItem.new
  puts ' '
  puts ' '
  print 'Product Name: '
  invitem.product_name = gets.chomp
  break if invitem.product_name.empty?
  print 'Price (e.g.: 22.99): '
  invitem.sale_price = gets.chomp
  print 'Quantity: '
  invitem.quantity = gets.chomp
  print 'Tax Percentage (e.g.: 7): '
  invitem.tax_percentage = gets.chomp

  # Push the invoice items into the items [] inside of the 'Invoice' class.
  inv.items.push(invitem)
  puts ' '

  # Prompt the user to continue or to finalize the invoice by pressing 'ENTER'.
  print 'To finalize the invoice, please hit the ENTER key in the Product' \
        ' Name field. Otherwise, please input additional items.'
end

# Rejects all invoice items with a quantity of '0'.
inv.reject_zeros

# Output the invoice in a clean manner.
puts ' '
puts 'Exited invoice maker. Below is your generated invoice. Have a nice day!'
puts ' _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|'

# Calls on 'Invoice' id method that randomly generates Invoice number.
inv.invoice_id
puts ' - - - - - - - - - - - -'

# Displays items using pre-formatted method from the 'Invoice' class.
inv.each_invoice

# Calculate the sub-total and tax of the invoice items.
sub_total = inv.sub_total
tax = inv.tax_percentage

# Output the invoice sub-total, tax, and total underneath the invoice number.
puts ' _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|'
puts '|'
puts "| Subtotal:         #{number_to_currency(sub_total)}"
puts "| Tax:              #{number_to_currency(tax)}"
puts "| Total:            #{number_to_currency(sub_total + tax)}"
puts '| _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |'
puts ' '
