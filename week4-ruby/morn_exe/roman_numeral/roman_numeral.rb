number = "1159".to_i
def insert_one(num)
  array = []
  num.times
    array.push("I")
  return array
end

def convert_no (num)
  puts "In convert no"
  array = []
  while num > 0

    if num >= 1000
      array.push("M")
      num = num - 1000
    elsif num >= 500
      array.push("D")
      num = num - 500
      puts num
    elsif num >= 100
      array.push("C")
      num = num - 100
    elsif num >= 50
      array.push("L")
      num = num - 50
    elsif num >= 10
      array.push("X")
      num = num - 10
    elsif num < 10

      if num > 5
        puts num
        exit(0)
      end
      # if num == 5
      #   array.push("V")
      #   num = num - 5
      # elsif num > 5
      #   puts num
      # end
    end
  end
  #puts array
  return array
end

#number =  convert_no number
array = convert_no number
puts array.join
