number = 0

while number < 10
  puts "this is bottle #{number}"
  number+=1
end

# while true
#   puts "eat dumpling"
#   exit(0) #force it out of the loop
# end

number = 0

until number > 10
  puts "this is bottle #{number}"
  number +=1
end

# bank_account = 50
# while !bank_account.empty?
#   puts 'party on'
#   bank_account -= 1
# end

# until bank_account.empty?
#   puts 'party on'
# end

dumplings_devoured = 0
begin
  puts "eat dumpling"
  dumplings_devoured += 1
end while dumplings_devoured < 50

3.times do
  puts "beetlejuice"
end

1.upto(3) do
  puts "orange juice"
end

3.downto(0) do
  puts "durian juice"
end