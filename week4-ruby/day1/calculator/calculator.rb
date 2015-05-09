puts "Welcome to Code Perry Crappy Calculator"
def checkMenuInputValid (value, range)
  return value >=0 && value > range
end
def parseFloat (num)
  num.to_f
end

def quit_program
  puts "Goodbye! See you later."
  exit(0)
end

def main_menu
  puts "Functionality"
  puts "------------------------------"
  puts "1. Basic Calculator"
  puts "2. Advanced Calculator"
  puts "3. Quit"
  main_options = gets.chomp.to_i
  while checkMenuInputValid(main_options, 3)
    print "Invalid options. Try Again.. "
    main_options = gets.chomp.to_i
  end

  return main_options
end

def basic_menu
  puts "Basic Calculator Operations"
  puts "------------------------------"
  puts "1. Addition (+)"
  puts "2. Minus (-)"
  puts "3. Multiply (*)"
  puts "4. Divide (/)"
  puts "5. Back to Main Menu"
  puts "6. Quit"
  puts "------------------------------"
  puts "What do you want to do? 1 - 4"
  basic_options = gets.chomp.to_i
  while checkMenuInputValid(basic_options, 6)
    print "Invalid options. Try Again.. "
    basic_options = gets.chomp.to_i
  end
  return basic_options
end

def basic_operations(option, valueArray)

  case option
  when 1
    puts "Adding Values"

    puts perform_sum valueArray, :+
  when 2
    puts "Minusing Values"

    puts perform_sum valueArray, :-
  when 3
    puts "Multiplying Values"

    puts perform_sum valueArray, :*
  when 4
    puts "Divide Values"

    puts perform_sum valueArray, :/
  else
    puts "Cannot recognize option"
    basic_menu
  end
end

def basic_calculator

  value = []
  counter = 0
  basic_options = basic_menu
  if basic_options < 5
    puts "How many numbers do you want to calculate"
    no_to_calculate = gets.chomp.to_i

    until counter >= no_to_calculate
      print "Enter value #{counter+1} to calculate: "
      value.push parseFloat gets.chomp
      counter+=1
    end
  else
    if basic_options == 6
      quit_program
    else basic_options == 5
      main_menu
    end
  end
  puts "value array = #{value}"
  basic_operations(basic_options, value)
end

def perform_sum valueArray, operator
  array_length = valueArray.length
  sum = valueArray[0]
  counter = 1

  if operator != "sqrt"
    until counter >= array_length
      sum = sum.send(operator, valueArray[counter])
      counter+=1
    end
  else
    sum = Math.sqrt(sum)
  end
  return sum
end




def advance_menu
  puts "Advance Calculator Operations"
  puts "------------------------------"
  puts "1. Exponent"
  puts "2. Square Root"
  puts "3. Back to Main Menu"
  puts "4. Quit"
  advance_options = gets.chomp.to_i
  while checkMenuInputValid(advance_options, 4)
    print "Invalid options. Try Again.. "
    advance_options = gets.chomp.to_i
  end
  return advance_options
end

def advance_operations(option, valueArray)

  case option
  when 1
    puts "Exponenting Values"
    puts perform_sum valueArray, :**
  when 2
    puts "Square Root Values"
    puts perform_sum valueArray, "sqrt"
  else
    puts "Cannot recognize option"
    advance_menu
  end
end

def advance_calculator
  advance_option = advance_menu

  if advance_option < 2
    value = []
    puts "Enter a value..."
    value.push parseFloat gets.chomp

    if advance_option == 1
      puts "To the power of what do you want the value to exponent?"
      value.push parseFloat gets.chomp
    end
    advance_operations(advance_option, value)
  else
    if advance_option == 3
      main_menu
    else advance_option == 4
      quit_program
    end
  end
end


def start_calculator
  case main_menu
  when 1 then basic_calculator
  when 2 then advance_calculator
  when 3 then quit_program
  end
end

start_calculator



