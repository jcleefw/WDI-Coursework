require 'pry'

class Phone

  attr_reader :number
  def initialize number
    @number = number
  end

  def number

    @number = @number.gsub(/\W\s?/, "")

    if @number.size != 10
      current_no_size = @number.size

      if @number[0]=="1" && @number.size >= 10
        #@number = @number.slice(1,@number.size)
        @number = @number[1..-1]
      else
        @number = convert_to_zero 10
      end
    end
    return @number
  end

  def convert_to_zero number
    new_number =  "%0#{number}d" % 0
  end

  def area_code
    @area_code = @number.slice(0,3)
  end

  def to_s
    #"(123) 456-7890"
    "(#{area_code}) #{@number[3..5]}-#{@number.slice(6..-1)}"
  end

end

