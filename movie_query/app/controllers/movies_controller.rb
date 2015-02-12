class MoviesController < ApplicationController
  def search
    @title = params['title']
    query_url = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json?'
    api = 'apikey=za4jav7tmcasvd3r6qfeutat'
    uri = URI(query_url + api + "&q=#{@title}")
    raw_json = Net::HTTP.get(uri)
    parsed_data = JSON.parse(raw_json)['movies']
    @title = parsed_data.first['title']
    @synopsis = parsed_data.first['synopsis']
  end
end
