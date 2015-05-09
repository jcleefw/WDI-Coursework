# inject solution. .reduce and .inject is the same

class Scrabble

  def self.score(word)

    lookup = {
      'a' => 1,
      'b' => 3,
      'c' => 3
    }

    total_score = 0;

    word.split('').each do |char|
      total_score = total_score + lookup[char]
    end

    total_score

    # word.split('').reduce(0) do |total, char|
    #   total = total + lookup[char]
    #   total
    # end
  end

end