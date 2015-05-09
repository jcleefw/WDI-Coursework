# puts is a method

def defuse_bomb(time_left)

  if time_left > 60
    puts "remove the cover"
    puts "first cut the red wire"
    puts "then cut the blue wire"
  else
    puts "run"
  end

end

defuse_bomb 12

def area length, width
  return some_string = "hello"
  length * width # this will not execute
end

results = area(4,5)
puts results

result2 = area 4,6
puts result2

def meaningness
end

puts meaningness

def square(x)
  x * x
end

def h1(body)
  "<h1>#{body}</h1>"
end

puts(h1 "Hello world")