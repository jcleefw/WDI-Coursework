require 'pry'

class Vigenere

  def initialize message, keyword
    @message = message
    @keyword = keyword
    @alphabets = ('a'..'z').to_a
    @cipher_key = cipher_key
  end

  def cipher_key
    @message.size

    leftover = @message.size % @keyword.size
    repeat = @message.size/@keyword.size

    if repeat > 0
      @cipher_key = (@keyword*2) + @keyword.clone.slice(0,leftover)
    end
  end

  def ciphering direction
    #cipher_key
    alphabets = ('a'..'z').to_a
    size = @message.size

    cipher_key_number = generate_array_number @cipher_key
    message_number = generate_array_number @message

    @ciphered_combo = []


    size.times do |x|
      if direction == "plus"
        @ciphered_combo << cipher_key_number[x] + message_number[x]
      elsif direction == "minus"
        @ciphered_combo << message_number[x] - cipher_key_number[x]
      end
    end
  end

  def split_to_array sentence
    sentence.scan /\w/
  end

  def generate_array_number sentence
    array = split_to_array sentence
    array.map { |letter| @alphabets.index(letter) }
  end

  def ciphered
    ciphering "plus"
    @ciphered_combo.map do |number|
      if number <=26
        @alphabets[number]
      else
        @alphabets[number-26]
      end
    end
  end

  def deciphered
    ciphering "minus"
    @ciphered_combo.map do |number|
      if number >=0
        @alphabets[number]
      else
        @alphabets[number+26]
      end
    end
  end

  def to_s
    "ciphertext: #{ciphered.join}"
    "deciphertext: #{deciphered.join}"
  end

end

#attackatdawn

ciphering1 = Vigenere.new('attackatdawn','lemon')
p (ciphering1.ciphered).join
ciphering2 = Vigenere.new('lxfopvefrnhr','lemon')
p (ciphering2.deciphered).join
#puts doing_the_thing = Vigenere.new('lxfopvefrnhr','lemon')