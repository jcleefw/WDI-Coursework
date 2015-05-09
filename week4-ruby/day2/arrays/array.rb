require 'pry'

days_of_the_week = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']

days_of_the_week2 = "monday tuesday wednesday thursday friday".split(' ')

days_of_the_week3 = %w{monday tuesday wednesday thursday}

days_of_the_week4 = %w\monday tuesday wednesday thursday\  # the seperator after %w can be any symbol. it's just a seperator

days_of_the_week[0] # monday
days_of_the_week[-3] #friday
days_of_the_week.first #monday
days_of_the_week.last #sunday
days_of_the_week.pop #return sunday  days_of_the_week =>["monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]

days_of_the_week.unshift(days_of_the_week.pop) #days_of_the_week => ["saturday", "monday", "tuesday", "wednesday", "thursday", "friday"]

days_of_the_week.join # "saturdaymondaytuesdaywednesdaythursdayfriday"
days_of_the_week << 'superawesomeday' #["saturday","monday","tuesday","wednesday","thursday","friday","super awesomeday"]
days_of_the_week[0...3] #["saturday", "monday", "tuesday"]
days_of_the_week.slice(0,3) #["saturday", "monday", "tuesday"]
binding.pry #debugger

array = [1,2,4,2]
array.count # 4
array.count { |x| x % 2 == 0} #3
array,count { |x| x.odd? } #1
array.count { |x| x.even? } #3

array.length # 4
array.size  #4

arr.select { |x| x.even? } # [2,4,2] return a new array, doesn't change the original
arr.select! { |x| x.even? } # [2,4,2] overwriting the existing array.

arr.map { |x| x+5 } # [7,9,7] returns a new array
arr.each { |x| x+5 } # [2, 4, 2] doesn't return anything
arr.each { |x| x+5 } # [2, 4, 2] if only wants to print things then the best is use each

arr.all? # true [2, 4, 2]
arr.all? # false for array = [2, 4, 2, nil]

arr.all? { |x| x%2==0 } # true for [2, 4, 2]

arr.inject("+") # 8 for [2, 4, 2]
arr.inject("-") # -4 for [2, 4, 2]
arr.inject('*') # 16 for [2, 4, 2]
number_array.inject(5, '+') # 13 for [2, 4, 2]
number_array.inject { |sum, n| sum+n } # 8 for [2, 4, 2]
number_array.inject(0) { |sum, n| sum+n } # 8 for [2, 4, 2]. inject(0) means the counting starts with 0+2; 2+4; 6+2.
number_array.inject(10) { |sum, n| sum+n } # 18 for [2, 4, 2]. inject(10) means the counting starts with 10+2; 12+4; 16+2.

"i have something here".include? "have" # true
["i", "have", "something", "here"].include? "have" #true
["i have something here"].include? "have" #false


