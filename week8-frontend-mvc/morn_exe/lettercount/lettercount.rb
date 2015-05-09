require 'pry'

def letter_count input
  input_array = input.split('')
  #binding.pry

  input_array.inject({}) do |hash, item|
    sum = hash[:"#{item}"] ||= 0
    #binding.pry

    hash[:"#{item}"]=  sum+=1

    hash
  end

end

p letter_count 'moon'
p letter_count 'codyperry'