require 'pry'
# require './person'

require_relative 'person' #just enter the file name

File.open('databse.txt', 'a+') do |file|

  print 'Add a person? (y/n)'
  response = gets.chomp.downcase

  while response == 'y'
    print "name: "
    name = gets.chomp

    print "Age: "
    age = gets.chomp

    print "Gender: "
    gender = gets.chomp

    file.puts "#{name},#{age},#{gender}"

    print 'Add a person? (y/n)'
    response = gets.chomp.downcase

  end

end

people = []

File.open('databse.txt', 'r') do |file|

  file.each do |line|
    data = line.split(',')
    person  = Person.new data[0], data[1], data[2]
    people << person
  end
end

people.each do |person|
  person.to_s
end

