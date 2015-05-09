require 'pry'

class Say

  attr_reader :number, :single

  def initialize number
    @number = number
    @single = {0=>"zero", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
    #@double = {1=>""}
    @teen = {10 => "ten", 11 => "eleven", 12 => "twelve",
     13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
     17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    @tenth = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty",
     6 =>"sixty", 7 => "seventy", 8 => "eighty", 9 => "ninty"}
  end

  def in_english
    if (0..99).include? @number
      number_array = @number.to_s.scan /\w/
      if number_array.size <= 1
        puts single_number @number
      elsif number_array.size > 1
        if (10..19).include? @number
          puts teen_number @number
        else
          tenth = tenth_number number_array[0].to_i
          if number_array[1].to_i != 0
            single = single_number number_array[1].to_i
            puts "#{tenth}-#{single}"
          else
            puts "#{tenth}"
          end
        end
      end
    else
      puts "Number must be between 0 and 99, inclusive. "
    end
  end

  def single_number number
    #puts "This is single number"
    return @single[number]
  end

  def teen_number number
    #puts "This is tenth number"
    return @teen[number]
  end

  def tenth_number number
    #puts "This is tenth number"
    return @tenth[number]
  end



end
Say.new(22).in_english
Say.new(7).in_english
Say.new(-1).in_english
Say.new(0).in_english
Say.new(14).in_english
Say.new(50).in_english
Say.new(98).in_english
Say.new(-1).in_english
Say.new(100).in_english

binding.pry




