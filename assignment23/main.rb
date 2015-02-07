# Assignment 23

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
# == Options
#   -h, --help   |   Seriously? I\'m not that good yet. No help...yet.
#
# == Author
#   Tony Gaeta
#
# == Copyright
#   Copyright (c) 2015 Tony Gaeta. Licensed under the MIT License:
#   http://www.opensource.org/licenses/mit-license.php'
puts ' '
print '~~ Begin Invoice ~~', "\n"
inv = Invoice.new
loop do
  invitem = InvoiceItem.new
  puts ' '
  puts 'Product Name: '
  invitem.product_name = gets.chomp
  exit false if invitem.product_name.empty?
  puts 'Price (e.g.: 22.99): '
  invitem.sale_price = gets.chomp
  puts 'Quantity: '
  invitem.quantity = gets.chomp
  puts 'Tax Percentage (e.g.: 0.07): '
  invitem.tax_percentage = gets.chomp
  inv.items.push(invitem)
  puts ' '
  print "Invoice #: #{Invoice.count}", "\n"
  print 'Product: ', invitem.product_name.capitalize, ' | Price: ', \
        invitem.sale_price, ' | Quantity: ', invitem.quantity, ' | Tax: ', \
        invitem.tax_percentage, "\n"
  print 'Total Items: calculation will show up here here', "\n"
  puts ' '
  print 'Sub-total: calculation will show up here', "\n"
  print 'Tax: calculation will show up here.', "\n"
  print 'Total: total will show up here.', "\n"
  puts ' '
  print 'To exit the program, please hit the ENTER key in the Product Name ' \
        'field. Otherwise, please input additional items.'
  puts ' '
end
