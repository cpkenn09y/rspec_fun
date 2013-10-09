class SudokuSolver
  attr_reader :board_string

  def initialize(board_string)
    @board_string = board_string
    @board = board
  end

  def board
    @board_string.split('')
  end

  def get_row(given_index)
    row = []
    @board.each_with_index do |element, index|
      if index/9 == given_index/9
        row << element
      end
    end
  row
  end

  def get_col(given_index)
    row = []
    @board.each_with_index do |element, index|
      if index % 9 == given_index % 9
        row << element
      end
    end
  row
  end


end
