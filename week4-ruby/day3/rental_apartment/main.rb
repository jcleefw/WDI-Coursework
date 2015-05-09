require 'pry'
require './person'
require './building'
require './apartment'
# |Apartment - attribute|type|
# |:----------|:-----------|
# |price|decimal|
# |is_occupied|boolean|
# |sqft|integer|
# |num_beds|integer|
# |num_baths|integer|
# |renters|array of person objects|
a1 = Apartment.new "a1", 550000.00, true, 100, 3, 2, [p1,p2]
a2 = Apartment.new "a2", 700000.00, false, 60, 2, 2, []
a3 = Apartment.new "a3", 700000.00, true, 120, 3, 2, [p3]
a4 = Apartment.new "a4", 600000.00, true, 60, 2, 2, [p4]
a5 = Apartment.new "a5", 600000.00, false, 60, 2, 2, []

# |Building - attribute|type|
# |:----------|:-----------|
# |address|string|
# |style|string|
# |has_doorman|boolean|
# |is_walkup|boolean|
# |num_floors|integer|
# |apartments|array of apartment objects|
b1 = Building.new "123, Perry St, Melbourne", "victorian", false, true, 5, [a1, a2, a3, a4, a5]

# |Person (assume tenants or prospective tenants)|type|
# |:----------|:-----------|
# |name|string|
# |age|integer|
# |gender|string|
# |apartment|apartment object|
p1 = Person.new "Cody", "Perry", 27, "female", "a1"
p2 = Person.new "Matt", "Perry", 45, "male", "a1"
p3 = Person.new "James", "Swift", 30, "male", "a3"
p4 = Person.new "Barbie", "Lands", 55, "female", "a4"




def create_tenant
  puts "Enter tenant's first name..."
  first_name = gets.chomp
  puts "Enter tenant's last name..."
  last_name = gets.chomp
  puts "Enter tenant's age..."
  age = gets.chomp.to_i
  puts "Enter tenant's gender..."
  gender = gets.chomp
  puts "Enter Apartment rented..."
  apartment = gets.chomp


  p = Person.new first_name, last_name, age, gender, "apartment"

  apartment.renters << p
  # p.apartments << apartment
end
puts "Do you want to add a new tenant?"
add_new = gets.chomp
if add_new == "y"
  create_tenant
end
binding.pry

