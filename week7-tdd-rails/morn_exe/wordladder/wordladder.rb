require 'pry'

require_relative 'wordlist'

class WordLadder

  def initialize word=nil
    @word = word
    @alphabets = ('a'..'z').to_a
  end

  def find_chain
    replace_letter @word
  end

  def replace_letter word
    word_split = (@word.scan /\w/)

    neighbour = []
    for i in 0..3 do

      @alphabets.each do |letter|
        replacing = word_split.clone

        if replacing[i]!=letter
          replacing[i] = letter
        end

        new_word = replacing.join

        if (FOUR_LETTER_WORDS.include? replacing.join) && (new_word != @word)
          #p neighbour
          neighbour << new_word

        end
      end
    end
    return neighbour.sort
  end

  def find_chain_thirty_three

    FOUR_LETTER_WORDS.each do | word |
      array = replace_letter word

      if array.size == 33
        return word
      end
    end
  end

end



word = WordLadder.new('aloe')
#word.replace_letter word
binding.pry