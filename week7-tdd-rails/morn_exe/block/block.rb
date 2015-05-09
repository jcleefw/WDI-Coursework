require 'pry'

BLOCKS = [['B','O'],
              ['X','K'],
              ['D','Q'],
              ['C','P'],
              ['N','A'],
              ['G','T'],
              ['R','E'],
              ['T','G'],
              ['Q','A'],
              ['F','S'],
              ['J','W'],
              ['H','U'],
              ['V','I'],
              ['A','N'],
              ['E','R'],
              ['F','S'],
              ['L','Y'],
              ['P','C'],
              ['Z','M']]

class Block
  # def intialize
  #   @block = [['B','O'],
  #             ['X','K'],
  #             ['D','Q'],
  #             ['C','P'],
  #             ['N','A'],
  #             ['G','T'],
  #             ['R','E'],
  #             ['T','G'],
  #             ['Q','D'],
  #             ['F','S'],
  #             ['J','W'],
  #             ['H','U'],
  #             ['V','I'],
  #             ['A','N'],
  #             ['E','R'],
  #             ['F','S'],
  #             ['L','Y'],
  #             ['P','C'],
  #             ['Z','M']]
  # end

  def can_make_word word
    clone = BLOCKS.clone
    word = word.scan /\w/

    found=[]
    word.each do |letter|
      counter = 0
      clone.each do |block|
        #puts "#{letter}"
        if block.include? letter
          found << true
          puts "#{letter} , #{clone.size}, #{found}, #{counter}"
          #binding.pry
          clone.delete_at(counter)

          break
        end

        counter +=1
      end

    end
    #binding.pry
    if (found.size >= word.size) && (!found.include? false)
      true
    else
      false
    end
  end
end

b = Block.new
p b.can_make_word("CONFUSE")

