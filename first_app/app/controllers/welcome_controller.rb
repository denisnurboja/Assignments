class WelcomeController < ApplicationController
  def index
    @title = params['title']

    # Code to connect and query Rotten Tomatoes.

    @synopsis = 'Great movie!'
  end
end
