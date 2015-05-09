# - Ask the user what the current temperature is, if the A/C is functional, and what temperature they wish it was.
#     - If the airconditioner is functional and the current temperature is above the the desired temperature... display "Turn on the A/C Please"
#     - If the airconditioner is non-functional and the current temperature is above the the desired temperature... display "Fix the A/C now!  It's hot!"
#     - If the airconditioner is non-functional and the current temperature is below the the desired temperature... display "Fix the A/C whenever you have the chance...  It's cool..."

puts "Is the A/C functional? yes or no?"
functional = gets.chomp.downcase

puts "What is the current temperature?"
current_temp = gets.chomp.to_i
desired_temp = 25


def maintain_air_con (functional, current_temp, desired_temp)

  if functional == "yes"
    if current_temp > desired_temp
      puts "Turn on the A/C please"
    end
  elsif functional == "no"
    if current_temp > desired_temp
      puts "Fix the A/C now!  It's hot!"
    else
      puts "Fix the A/C whenever you have the chance...  It's cool..."
    end
  end
end

maintain_air_con( functional, current_temp, desired_temp )

