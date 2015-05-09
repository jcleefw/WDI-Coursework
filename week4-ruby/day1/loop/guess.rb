

puts "Welcome to a guessing game"

print "Enter the game range...(0 - 10000)"
range = gets.chomp.to_i

number = rand(range).to_i + 1

print "Insert a number to guess ... "
guess_no = gets.chomp.to_i

while guess_no != number

  # if guess_no == number

  # else
    if guess_no < number
      puts "Your number should be bigger"
    elsif
      puts "Your number should be smaller"
    end
    print "Insert a number to guess ... "
    guess_no = gets.chomp.to_i
  # end
end

puts "You've got it. Secret number is #{number}"