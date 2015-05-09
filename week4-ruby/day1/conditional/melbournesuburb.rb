# - Create a program that asks what suburbs you live in.
# - Depending on the answer, print an appropriate response of your choosing

print "Which suburb do you live in? "
suburb = gets.chomp.downcase

# case suburb
#   when "footscray"
#     puts "You can eat all the vietnamese food you want"
#   when "Prahran"
#     puts "Go party every night on Chapel Street then"
#   when "Yarravile"
#     puts "That's where all hippies live"
#   when "Werribee"
#     puts "Do you hear the sound of the animals from the Werribee zoo?"
#   when "Hawthorn"
#     puts "That's a nice area to live in"
#   when "Kensington"
#     puts "That's where I live in"
#   when "Kensington"
#     puts "That's where I live in"
#   else
#     puts "Good that you know where you live in"
#   end

message = case suburb
          when "footscray", "springvale", "richmond"
            then "You can eat all the vietnamese food you want"
          when "prahran"
            then "Go party every night on Chapel Street then"
          when "yarravile"
            then "That's where all hippies live"
          when "werribee"
            then "Do you hear the sound of the animals from the Werribee zoo?"
          when "hawthorn", "camberwell", "kew"
            then "Rich man area!!! Expensive houses"
          when "kensington"
            then "That's where I live in"
          when "melbourne"
            then "You know this place. Needless to say"
          else "Good that you know where you live in"
          end

puts message