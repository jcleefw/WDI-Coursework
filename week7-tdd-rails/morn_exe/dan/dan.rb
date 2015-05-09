require 'pry'

class Dan

  def initialize

  end

  def answer message
    @message = message
    if @message.include? "Bro, "
      leet_speak_translation
    elsif @message.include? "?"
      "Whatever."
    else
      #binding.pry
      if @message.empty?
        @answer = "Fine. Be that way!"
      elsif @message == @message.upcase
        @answer = "Woah, chill out!"
      else
        @answer = "Sure."
      end
    end
  end

  def to_s
    "#{@answer}"
  end

  def leet_speak_translation
    #binding.pry
    translates = @message.gsub("Bro, ","").split(" ")
    new_translate = []

    sub = {a: 4, e: 3, i: 1, o: 0}
   # @message.gsub(a, sub[:a])
    translates.each do |translate|
      translate_array = translate.scan /\w/
      alternate = true
      sub.each do |x|
        #binding.pry
        if translate_array[1] == x[0].to_s
          alternate = false
        end
        #binding.pry
        if translate.include? x[0].to_s
          translate = translate.gsub(x[0].to_s, x[1].to_s)
        end
      end

      if alternate
        translate_alternate = translate.scan /\w/
        translate_alternate[1] = translate_alternate[1].upcase
        translate = translate_alternate.join
      end
      #binding.pry
      new_translate << translate
      #translate
    end
    new_translate.join(" ")
  end

end


#dan = Dan.new("Hello")

