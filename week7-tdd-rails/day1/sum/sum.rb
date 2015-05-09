class Dim

  def initialize array, max
    @num_array = array.uniq
    @max = max
  end

  def sum
    tally = 0

    # if @num1 == @num2
    #   @num2 = nil
    #end
    (0..@max).to_a.each do |num|
      @num_array.each do | indi_num|
        if num % indi_num == 0
          tally += num
        end
      end
      # if num % @num1 == 0
      #   tally += num
      # end

      # if !@num2.nil? && num % @num2 == 0
      #   tally += num
      # end
    end
    tally
  end


end