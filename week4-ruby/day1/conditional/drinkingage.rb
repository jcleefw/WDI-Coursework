# - Ask the user for their age.
#     -Remember that anytime you get input, it is a string, so you will need to change the age input to a number.
# - If age is less than 18, print an appropriate message. 
# - If the age is equal to or over 18, print a different message.
puts "Welcome!!"
print "What is your age?"
age = gets.chomp.to_i

if age < 18 
  puts "You're too young. Go away."
elsif age >= 18 
  puts "Welcome in."
end