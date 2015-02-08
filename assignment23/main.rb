# Assignment 23

require 'active_support'
require 'active_support/all'
include ActiveSupport::NumberHelper

load 'invoice.rb'
load 'invoiceitem.rb'

puts ' '
puts '# == Synopsis
#   This is Assignment 23. It is an invoice app.
#   Enter the product name, sale price, quantity, and tax percentage.
#
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
#   http://www.opensource.org/licenses/mit-license.php
#'
puts ' '
print '~~ Begin Invoice ~~', "\n"
inv = Invoice.new
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
  inv.items.push(invitem)
  puts ' '
  print 'To finalize the invoice, please hit the ENTER key in the Product' \
        ' Name field. Otherwise, please input additional items.'
end
inv.reject_zeros
puts 'Exited invoice maker. Below is the generated invoice. Have a nice day!'
puts ' _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|'
print '| Invoice #: ', 'I' + rand(1..999_999).to_s + 'LMO |', "\n"
puts ' - - - - - - - - - - - -'
inv.each_invoice do |i|
  puts ' '
  puts "| Invoice Item #: #{Invoice.count}"
  print '| Product: ', i.product_name.capitalize, ' | Price: ', \
        number_to_currency(i.sale_price), ' | Quantity: ', i.quantity, \
        ' | Tax: ', i.tax_percentage, '%', "\n"
end

sub_total = inv.sub_total
tax = inv.tax_percentage
puts ' _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|'
puts '|'
puts "| Subtotal:         #{number_to_currency(sub_total)}"
puts "| Tax:              #{number_to_currency(tax)}"
puts "| Total:            #{number_to_currency(sub_total + tax)}"
puts '| _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |'
