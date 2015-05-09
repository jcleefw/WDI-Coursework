require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'


get '/' do

  #if params[:stock_id] != nil && params[:stock_id].length > 0
    binding.pry
  if !params[:stock_id].nil? && !params[:stock_id].empty?

    @result = YahooFinance::get_quotes(YahooFinance::StandardQuote, params[:stock_id])

    File.open('databse.txt', 'a+') do |file|
      @price = @result[params[:stock_id]].lastTrade
      @name = @result[params[:stock_id]].name
      @id = params[:stock_id]

      #binding.pry
      file.puts "#{@id},#{@name},#{@price}"
    end

  end

  erb :index
end

get '/history' do

  histories = []

  File.open('databse.txt', 'r') do |file|
    @lines = []
    file.each do |line|

      @lines << line
      #data = line.split(',')
      # @id = data[0]
      # @name = data[1]
      # @price = data[2]
      #histories << "<li>#{@id}  #{@name}  #{@price}</li>"
    end
  end

  #@histories = histories.join

  erb :history
end