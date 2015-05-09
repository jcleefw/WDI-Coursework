require 'pry'
require_relative 'dan'

message = ''
while message != 'quit'
  puts "Say something to Dan... or type 'quit' to exit"

  message = gets.chomp

  dan = Dan.new(message)
  puts dan.answer
end
