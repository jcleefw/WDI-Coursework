# 3. After storing data, prompt the user with:
#   * **Add another item to the order? (y/n)**
#   * Repeat steps 1 & 2 if the answer is "y"
# 3. After the user completes adding orders, print out:
#   * **"All orders: {order data}"**


require 'pry'
def take_name
  print "What is your name?"
  name = gets.chomp
end

def take_order
  print " What do you want for lunch?"
  person_order = gets.chomp
end


def store_order orders
  name = take_name
  person_order = take_order
  orders[name] = [person_order]
  #return name

  new_order = another_order

  while new_order == "y"
    store_order_same_person name, orders
    new_order = another_order
  end
  puts "Got your orders. Sit around and wait then. "
end

def store_order_same_person person_name, orders
  puts "What else do you want to add"
  add_order = gets.chomp
  orders[person_name].push(add_order)
end

def another_order
  puts "Do you want to add another item to order (y/n)?"
  new_order = gets.chomp
end

def another_person
  puts "Next person (y/n)?"
  next_person = gets.chomp
end


def print_all_orders orders
  orders.each { |name, order|
    last_order = order.pop
    puts "#{name} ordered a #{order.join(", ")} & #{last_order}"
  }
end

orders = {}
puts "It's lunch time. Time to eat."
name = store_order orders

next_person = another_person
while next_person == "y"
  name = store_order orders
  next_person = another_person
end

binding.pry
print_all_orders orders


