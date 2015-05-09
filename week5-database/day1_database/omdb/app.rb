require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'uri'
require 'pry'
require 'pg'
require 'active_record'

require_relative 'config.rb'
require_relative 'movie.rb'

get '/' do
  @latest_search = Movie.all.limit(10)
  erb :index #, :layout=>true
end

get '/movie' do
  erb :index
end

post '/search' do

  #URI.escape params["name"] is use to catch same weird characters like space or é etc.
  @result = HTTParty.get("http://www.omdbapi.com/?s=#{URI.escape params["name"]}")

  if @result["Response"] == "False"
    @message = "Sorry, No movies found."
    erb :not_found
  else
    erb :search
  end
end

post '/movie' do

  #sql = "SELECT * FROM movies WHERE imdbID = '#{ params['movie_imdbID'] }';"
  #rows = db.exec("SELECT * FROM movies WHERE imdbID = '#{ params['movie_imdbID'] }';")

  rows = Movie.where imdbid: params['movie_imdbID']

  if rows.count > 0

    @movie_selected = rows.first
  else
    raw_result = HTTParty.get("http://www.omdbapi.com/?t=#{URI.escape params["movie_selected"]}")

    @movie_selected = {}

    raw_result.each do | key, value |
      @movie_selected[key.downcase] = value
    end

    # sql = "INSERT INTO movies (title, year, genre, actors, plot, director, country, poster, imdbID) VALUES ( '#{@movie_selected['title']}', '#{@movie_selected['year'].to_i}', '#{@movie_selected['genre']}', '#{@movie_selected['actors']}', '#{@movie_selected['plot']}', '#{@movie_selected['director']}', '#{@movie_selected['country']}', '#{@movie_selected['poster']}', '#{@movie_selected['imdbid']}');"
    # db.exec(sql)
    Movie.create title: @movie_selected['title'], year: @movie_selected['year'].to_i, genre: @movie_selected['genre'], actors: @movie_selected['actors'], plot: @movie_selected['plot'], director: @movie_selected['director'], country: @movie_selected['country'], poster: @movie_selected['poster'], imdbid: @movie_selected['imdbid']
  end

  erb :movie
end