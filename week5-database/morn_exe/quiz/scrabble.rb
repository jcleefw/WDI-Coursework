require 'pry'
class Scrabble
  def initialize word
    #@word = word
  end

  def self.score word
    @word = word.upcase.scan /\w/
    points = []
    @points = {
      '1' => "A, E, I, O, U, L, N, R, S, T".split(", "),
      '2' => "D, G".split(", "),
      '3' => "B, C, M, P".split(", "),
      '4' => "F, H, V, W, Y".split(", "),
      '5' => "K".split(),
      '8' => "J, X".split(", "),
      '10' => "Q, Z".split(", ")
    }

    total_score = 0
    @word.each do | letter |
      @points.each do | score, alphabets |
        if alphabets.include? letter
          total_score += score.to_i
        end
      end

    end
    puts total_score
  end
end

Scrabble.score("cabbage")
