
class LeapYear
  def self.leap_year? year
    return false if year % 4 != 0
    return false if year % 100 != 0
    return false if year % 400 != 0
    true
  end

  # def self.hello
  #   'hi'
  # end
end

# leap_year? 2000

# def test message, actual,expected
#   if actual == expected
#     puts "winning #{message}"
#   else
#     puts "losing #{message}"
#   end
# end

# test 'leap_year', leap_year?(2000),true
# test 'non leap year', leap_year?(2007),false
# test 'year 1', leap_year?(1), false
# test 'empty string', leap_year?(''), "you're idiot"

