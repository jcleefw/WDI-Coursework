require 'pry'



def do_sum input
  counter = 0
  sum = 0
  # input.each do | float |

  #   if counter % 2 == 0
  #     sum += float
  #   else
  #     sum -= float
  #   end
  #   counter += 1
  # end

  input.each_with_index do | float, i |
    sum+= i%2==0 ? float : -float
  end

  # odd = true
  # input.reduce do |memo, elem|

  #   if odd
  #     memo = memo - elem
  #   else
  #     memo = memo + elem
  #   end
  #   odd = !odd
  #   memo
  # end

  return sum
end

def split_num_to_char input
  input.to_s.split(//).map {|char| char.to_i}
end

# def divisible_by_eleven? input
#   #split_num_to_char

#   num = input
#   while num.size > 2
#     binding.pry
#     if !input.kind_of?(Array)
#       num = split_num_to_char input
#     end
#     num = do_sum num

#   end
# end

p do_sum [5.0, 4.0, 3.0, 2.0, 1.0]
p do_sum [100.7, -1.3, 10.0, 0.1]


# n = divisible_by_eleven? 133522193563

p do_sum n

