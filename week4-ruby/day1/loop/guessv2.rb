puts "Welcome to a guessing game"

print "Enter the game range...(0 - 10000)"
range = gets.chomp.to_i

secret_no = rand(range).to_i + 1

def question
  print "Insert a number to guess ... "
  return gets.chomp.to_i
end

def check_condition (number, secret_no)
  if number < secret_no
    puts "Your number should be bigger"
  elsif
    puts "Your number should be smaller"
  end
end

guess_no = question

while guess_no != secret_no
  check_condition(guess_no, secret_no);
  guess_no = question
end

puts "You've got it. Secret number is #{secret_no}"