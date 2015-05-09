require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'httparty'
require 'pry'

get '/' do
  erb :index
end

get '/lotto' do
  Random.rand(1..40).to_s
end

get '/slow' do
  sleep 5
  "<em>hahaha!</em>" * Random.rand(1..5)
end

get '/students' do
  "dom js beta"
end

get '/api/students' do
  content_type :json # so that browser is recognizing the file as json instead of text
  content = {
    name: 'dom',
    luckyNumber: 6,
    currentTime: Time.now
  }
  content.to_json
  #['dom','jc','beta'].to_json
end

get '/hi_dom' do
  #result = HTTParty.get('http://localhost:4567/api/students')
  result = HTTParty.get('http://localhost:4567/slow')
  #"hi #{result['name']}"

  result.to_s
  #binding.pry
end