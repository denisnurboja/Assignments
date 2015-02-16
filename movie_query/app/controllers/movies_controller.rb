class MoviesController < ApplicationController
  def search
    @title = params['title']

    query_url = 'http://api.rottentomatoes.com/api/public/v1.0/movies.json?'
    api = 'apikey=za4jav7tmcasvd3r6qfeutat'
    uri = URI(query_url + api + "&q=#{@title}")
    raw_json = Net::HTTP.get(uri)
    parsed_data = JSON.parse(raw_json)['movies']
    movie = parsed_data.first

    @cast = []

    @title = movie['title']
    @synopsis = movie['synopsis']
    if @synopsis == nil
      @synopsis = 'No synopsis available at this time.'
    else
      @synopsis
    end

    @year = movie['year']
    @runtime = movie['runtime']
    @critics_r = movie['ratings']['critics_rating']
    @audience_r = movie['ratings']['audience_rating']
    @critics = movie['ratings']['critics_score']
    @audience = movie['ratings']['audience_score']
    @posters = movie['posters']['original']
    @poster = @posters.gsub('_tmb.jpg', '_ori.jpg')
    @cast = movie['abridged_cast']
    @rating = movie['mpaa_rating']

    @theater = movie['release_dates']['theater']
    @dvd = movie['release_dates']['dvd']
    if @dvd == nil
      @dvd = 'No release date available at this time.'
    else
      @dvd = Date.parse(movie['release_dates']['dvd'])
      @dvd = @dvd.strftime('%B %-d, %Y')
    end
    if @theater == nil
      @theater = 'No release date available at this time.'
    else
      @theater = Date.parse(movie['release_dates']['theater'])
      @theater = @theater.strftime('%B %-d, %Y')
    end
  end
end
