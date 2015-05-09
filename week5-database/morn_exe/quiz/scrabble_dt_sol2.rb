# .find solution. .find

class Scrabble

  def self.score(word)
    score = 0
    word.upcase.split('').each do |letter|
      score = score + lookup(letter)
    end
    score
  end

  def self.lookup(letter)
    values = {
        "A, E, I, O, U, L, N, R, S, T" => 1,
        "D, G" => 2,
        "B, C, M, P" => 3,
        "F, H, V, W, Y" => 4,
        "K" => 5,
        "J, X" => 8,
        "Q, Z" => 10
    }
    values.find {|k, v| k.include?(letter) }[1]
  end

end