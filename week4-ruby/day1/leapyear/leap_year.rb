puts "Enter a year to check whether it's a leap year..."


def not_leap (year, statement)
  if statement == true
    puts "#{year} is not a leap year"
  else
    puts "#{year} is a leap year"
  end
end

def check_leap_year (year)
  if year %4 == 0
    if year % 100 == 0
      if year % 400 == 0
        not_leap(year, false)
      else
        not_leap(year, true)
      end

    else
      not_leap(year, false)
    end
  else
    not_leap(year, true)
  end
end

check_leap_year (gets.chomp.to_i)