def romanify(number)
  romans = [number, ""]

  def build_rome_in_a_day(array, number, letter)
    remainder = array[0]
    romanized = array[1]
    while remainder >= number
      remainder -= number
      romanized += letter
    end
    [remainder, romanized]
  end

  romans = build_rome_in_a_day romans, 1000, "M"
  romans = build_rome_in_a_day romans, 900, "CM"
  romans = build_rome_in_a_day romans, 500, "D"
  romans = build_rome_in_a_day romans, 400, "CD"
  romans = build_rome_in_a_day romans, 100, "C"
  romans = build_rome_in_a_day romans, 90, "XC"
  romans = build_rome_in_a_day romans, 50, "L"
  romans = build_rome_in_a_day romans, 40, "XL"
  romans = build_rome_in_a_day romans, 10, "X"
  romans = build_rome_in_a_day romans, 9, "IX"
  romans = build_rome_in_a_day romans, 5, "V"
  romans = build_rome_in_a_day romans, 4, "IV"
  romans = build_rome_in_a_day romans, 1, "I"

  romans[1]
end

puts "Give me a number yo"
usr_num = gets.chomp.to_i
puts romanify(usr_num)
puts ""