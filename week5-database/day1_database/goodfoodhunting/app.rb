require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'
require 'active_record'


require_relative 'config'
require_relative 'dish'

get '/' do
  # sql = 'SELECT * FROM dishes ORDER BY name;'
  # @rows = run_sql(sql)
  @dishes = Dish.all
  erb :index
end

get '/dishes' do
  # sql = 'SELECT * FROM dishes ORDER BY name;'
  # @rows = run_sql(sql)
  @dishes = Dish.all
  erb :index
end

post '/dishes' do
  # sql = "INSERT INTO dishes (name,image_url) VALUES ('#{params['name']}', '#{params['url']}')"

  # run_sql(sql)
  Dish.create name: params['name'], image_url: params['url']
  redirect to '/'
end

get '/dishes/new' do
  erb :new
end

get '/dishes/:id/edit' do
  # sql ="SELECT * FROM dishes WHERE id = #{params[:id]}"

  # rows = run_sql(sql)
  binding.pry
  @dish = Dish.find params[:id].to_i

  erb :edit
end

put '/dishes/:id' do
  # sql = "UPDATE dishes SET name='#{params['name']}', image_url='#{params['url']}' where id = #{params[:id]}"

  # run_sql(sql)
  edit_dish = Dish.find params[:id]
  edit_dish.name = params['name']
  edit_dish.image_url = params['url']
  edit_dish.save
  redirect to '/'
end

delete '/dishes/:id/delete' do
  # sql = "DELETE FROM dishes WHERE id = #{params[:id]}"
  # sql
  # run_sql(sql)
  unwanted_dish = Dish.find params[:id]
  unwanted_dish.delete

  redirect to '/'
end

def run_sql(sql)
  db = PG.connect(:dbname => 'goodfoodhunting')
  rows = db.exec(sql)
  db.close
  return rows
end