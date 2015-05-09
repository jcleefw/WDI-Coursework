require 'pry'
a = ["Anil", "Erik", "Jonathan"]


# return string "Erik"
a[1]

# add a new name to end of array
a.push("James")
# add a new name to the beginning of array
a.unshift("Mark")
a << "dt"

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string `"One"`?
h[1]

# 1. How would you return the string `"Two"`?
h[:two]

# 1. How would you return the number `2`?
h["two"]


# 1. How would you add `{3 => "Three"}` to the hash?
h[3] = "three"
h.merge!({3 => "three"})
# 1. How would you add `{:four => 4}` to the hash?
h[:four] = "four"



is = {true => "It's true!", false => "It's false"}


is[2+2==4] #true

is["Erik" == "Jonathan"] #false

is[9 > 10] #false

is[0] # nil

is["Erik"] # nil



users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}


# 1. How would you access Jonathan's Twitter handle (i.e. the string `"tronathan"`)?
users["Jonathan"][:twitter]

# 1. How would you add the number `7` to Erik's favorite numbers?
users["Jonathan"][:favorite_numbers].push(7)

# 1. How would you add yourself to the users hash?
users["JC"] = {:twitter=>"jcleefw", :favorite_numbers=>[7,14]}

# 1. How would you return the array of Erik's favorite numbers?
users["Erik"][:favorite_numbers]

# 1. How would you return the smallest of Erik's favorite numbers?
users["Erik"][:favorite_numbers].min

# 1. How would you return an array of Anil's favorite numbers that are also even?
users["Anil"][:favorite_numbers].select { |x| x.even? }

# 1. How would you return an array of the favorite numbers common to all users?
users["Jonathan"][:favorite_numbers] & users["Erik"][:favorite_numbers] & users["Anil"][:favorite_numbers]

# 1. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
(users["Jonathan"][:favorite_numbers] + users["Erik"][:favorite_numbers] + users["Anil"][:favorite_numbers]).sort.uniq

users.map do |key, value|
  value[:favorite_numbers]
end.flatten

  new_array = []

binding.pry
users.map do |key, value|

  new_array.concat(value[:favorite_numbers])
end
