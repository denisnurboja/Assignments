=begin
require 'net/http'
require 'json'

QUERY_URL = 'http://api.walmartlabs.com/v1/search'
API_KEY = 'ky6tqtdvmh23g2cz5e78tvwe'
FORMAT = 'json'

url = URI(QUERY_URL + "?query=#{product_search.gsub(' ', '%20')}&format=json&apiKey=#{API_KEY}&sort=relevance")
raw_json = Net::HTTP.get(url)
search_results = JSON.parse(raw_json)
items = search_results['items']
items.each do |item|
  puts "#{item['itemId']}, #{item['name']},#{item['salePrice']},"
end
=end
