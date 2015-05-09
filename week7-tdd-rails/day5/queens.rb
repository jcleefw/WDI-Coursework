require 'pry'

class Queens
  attr_accessor :chessboard
  attr_reader :white, :black

  def initialize position = {}
    position[:white] ||= [0, 3]
    position[:black] ||= [7, 3]

    raise ArgumentError if position[:white] == position[:black]
    @white = position[:white]
    @black = position[:black]

    @chessboard = Array.new(8, "O") { Array.new(8, "O") }
    place_piece @white, "W"
    place_piece @black, "B"
  end

  def place_piece side, char
    row = side[0]
    col = side[1]
    @chessboard[row][col] = char
  end

  def to_s
    result = ""
    @chessboard.each do |row|
      result += (row.join " ") + "\n"
    end
    result.chomp
  end

  def attack?
    if (same_row_col? 0) || (same_row_col? 1) || is_other_diagonal? #||(is_diagonal?) ||
      true
    else
      false
    end
  end

  def same_row_col? val
    @white[val] == @black[val]
  end

  def is_other_diagonal?
    #binding.pry
    piece_row = create_piece_hash 0
    piece_col = create_piece_hash 1

    #loop 8 times
    0.upto(@chessboard.size-1) do |counter|

      row_direction = find_move_direction piece_row[:white], piece_row[:black]
      col_direction = find_move_direction piece_col[:white], piece_col[:black]
      p "#{row_direction} ; #{col_direction}"

      piece_row[:white] = piece_row[:white].send row_direction,1

      if piece_row[:white] == piece_row[:black]
        piece_col[:white] = piece_col[:white].send col_direction,counter+1

        if piece_col[:white] == piece_col[:black]
          return true
        end
      end
    end

    false
  end

  def create_piece_hash val
    hash = {white: @white[val], black: @black[val]}
  end

  def find_move_direction val1, val2
    if val1 < val2
      :+
    else
      :-
    end
  end

end

