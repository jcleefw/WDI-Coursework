def leap_year?(year)
  return false if year % 4 != 0
  return false if year % 100 != 0
  return false if year % 400 != 0
  true
end

leap_year?(2000)

