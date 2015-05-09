require 'pry'

class Coffee
  #c1 = Coffee.new('latte','2 sugars','medium','Darryl')
  attr_accessor :collected
  attr_reader :order_time
  def initialize coffee, sugar, size, name
    @coffee = coffee
    @sugar = sugar
    @size = size
    @name = (mispell name).join
    @order_time = Time.now
    @wait_time = (160..300).to_a.sample
    @collected = false
  end

  def to_s
    "#{@name}'s #{@coffee}, #{@size}, #{@sugar.to_s} sugars."
  end

  def ready?

    if Time.now < @order_time + @wait_time
      puts "Not ready yet. Your wait time is #{(@order_time + @wait_time - Time.now)} seconds since order"
      return false
    else
      puts "ready for pick up."
      return true
    end
  end

  def mispell name

    vowel = "aeiouAEIOU"
    name_array = name.scan /\w/
    name_array.map do | char |
      if vowel.include? char
        char = (vowel.scan /\w/).sample
      else
        char = char
      end
    end
  end
end

order = []

  def check_order order_name
    puts "Order person's name"
    order_name.ready?
  end

  def pick_up_order order_name
    if order_name.ready? == true && order.collected == false
      order_name.collected = true
    end
  end
c1 = Coffee.new('latte','2','medium','Darryl')
c2 = Coffee.new('cappucino','1','medium','Amanda')

binding.pry