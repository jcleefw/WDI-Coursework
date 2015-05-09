if (2+2) == 5
  puts "the world has gone mad"
end

if (2+2) == 5 
  puts "the world has gone mad"
else
  puts "nothing new here, back to work"
end

person = 'mary'

if person != 'wally'
  puts 'where is wally'
end

puts "where is wally " if person != "wally"

# switch / case 
grade = 'B'

case grade
  when "A"
    puts "Well done! you massive nerd"
  when "B"
    puts "underachiver"
  when "C"
    puts "pick it up"
  else
    puts "too bad"
  end

if grade == 'A'
  puts "well done"
elsif grade == 'B'
  puts "underachiever"
end
