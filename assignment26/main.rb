require 'net/http'
require 'json'
require 'active_support'
require 'active_support/all'
include ActiveSupport::NumberHelper

load 'invoice.rb'
load 'invoiceitem.rb'

puts ' '
print '~~ Begin Invoice ~~', "\n"
inv = Invoice.new

QUERY_URL = 'http://api.walmartlabs.com/v1/search'
API_KEY = 'ky6tqtdvmh23g2cz5e78tvwe'
FORMAT = 'json'

loop do
  puts ' '
  print 'What product do you want to search for? '
  product_search = $stdin.gets.strip
  break if product_search.empty?
  url = URI(QUERY_URL + "?query=#{product_search.gsub(' ', '+')}&format=json&apiKey=#{API_KEY}")
  raw_json = Net::HTTP.get(url)
  search_results = JSON.parse(raw_json)
  items = search_results['items']
  items.each do |i|
    puts "ID #: #{i['itemId']} | #{i['name']} | #{i['salePrice']}"
  end

  invitem = InvoiceItem.new
  puts ' '
  puts ' '
  print 'Add WalMart item by ID number to invoice or Hit ENTER exit. '
  invitem.search_id = gets.chomp
  break if invitem.search_id.empty?
  items.each do |i|
    if invitem.search_id.to_i  == i['itemId']
      invitem.product_name = i['name']
      invitem.sale_price = i['salePrice']
    end
  end

  puts "You have selected the #{invitem.product_name} with the set price of " \
       "#{number_to_currency(invitem.sale_price)}. Please continue " \
       'with the quantity and tax.'
  print 'Quantity: '
  invitem.quantity = gets.chomp
  print 'Tax Percentage (e.g.: 7): '
  invitem.tax_percentage = gets.chomp
  inv.items.push(invitem)
  puts ' '
  print 'To finalize the invoice, please hit the ENTER key in the Product' \
        ' field. Otherwise, please search for more items to invoice.'
  puts ' '
end

inv.reject_zeros

puts ' '
puts 'Exited invoice maker. Below is your generated invoice. Have a nice day!'
puts ' _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|'

inv.invoice_id
puts ' - - - - - - - - - - - -'

inv.each_invoice

sub_total = inv.sub_total
tax = inv.tax_percentage

puts ' _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _|'
puts '|'
puts "| Subtotal:         #{number_to_currency(sub_total)}"
puts "| Tax:              #{number_to_currency(tax)}"
puts "| Total:            #{number_to_currency(sub_total + tax)}"
puts '| _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |'
puts ' '
