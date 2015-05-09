class Say

  def initialize(number)
    @number = number
  end

  def in_english
    small_numbers(@number) || big_numbers(@number)
  end


  def small_numbers(number)
    "zero one two three four five six".split(' ')[number]
  end

  def big_numbers(number)
    first, last = number.divmod(10)
    "#{tens(first)}-#{small_numbers(last)}"
  end


  def tens(number)
    "zero ten twenty thirty fourty fivety".split(' ')[number]
  end
end

puts Say.new(22).in_english
puts Say.new(7).in_english
puts Say.new(-1).in_english
puts Say.new(0).in_english
puts Say.new(14).in_english
puts Say.new(50).in_english
puts Say.new(98).in_english
puts Say.new(-1).in_english
puts Say.new(100).in_english