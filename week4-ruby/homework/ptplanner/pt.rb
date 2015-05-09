require 'pry'

alamein = ["Flinders Street", "Richmond", "East Richmond", "Burnley", "Hawthorn", "Glenferrie"];
glenwaverly = ["Flagstaff", "Melbourne Central", "Parliament", "Richmond", "Kooyong", "Tooronga"];
sandringham = ["Southern Cross", "Richmond", "South Yarra", "Prahran", "Windsor"];

train = {}
train[:alamein] = alamein
train[:glenwaverly] = glenwaverly
train[:sandringham] = sandringham

def print_all_stations hash
  all_stations = []
  hash.each do | line, stations|
    all_stations.push stations
  end
  return all_stations.flatten.uniq
end

puts ""
puts "Welcome to PT Planner"
puts ""
puts "Select from the following List: "
puts "----------------------------------------- "
puts print_all_stations train
puts "----------------------------------------- "
print "Please Enter Start Station: "
start_station = gets.chomp

print "Please Enter End Station: "
end_station = gets.chomp


def calcTrip line, start_station, end_station, direction

  start_idx = line.index(start_station)
  end_idx = line.index(end_station)

  if start_idx < end_idx
    return line.slice(start_idx, end_idx +1)
  else
    if direction == "start"
      return line.slice(end_idx, start_idx +1).reverse
    else
      return line.slice(end_idx, start_idx).reverse
    end
  end
end

# start_station = "Flinders Street"
# end_station = "Windsor"

start_line =""
end_line =""

train.each do | line, stations |
  stations.each do | station |
    if station == start_station
      start_line = line
    end
    if station == end_station
      end_line = line
    end
  end
end

intersection = (train[start_line] & train[end_line]).join

if start_line == end_line
  calcTrip train[start_line], start_station, end_station
else
  first_trip = calcTrip train[start_line], start_station, intersection, "start"
  second_trip = calcTrip train[end_line], intersection, end_station, "end"
end
stop_name = (first_trip + second_trip).uniq
stop_name.shift
no_of_stop = stop_name.length

puts "From #{start_station} to #{end_station}"
puts "Total No of stops : #{no_of_stop}"
puts "All Stops name: #{stop_name}"
binding.pry


# def find_line(network, station)
#   return network.select do |key, val|
#     return val if network[key].include? station
#   end
# end

# def line_stations (start, stop, line)
#   start= line.index start
#   stop = line.index stop
#   return line[start..stop] if start<stop
#   return line[stop..start] if start >=stop
# end



