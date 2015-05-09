require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# creating route
get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end


# sinatra dynamic route
get '/hello/:name' do

  "Hello there #{params[:name]}"
end

get '/calc/multiply/:num1/:num2' do
  result = params[:num1].to_i * params[:num2].to_i
  "the result is #{result}"
end