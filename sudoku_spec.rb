require 'rspec'
require_relative "sudoku"

describe "SudokuSolver" do
  string = "619030040270061008000047621486302079000014580031009060005720806320106057160400030"
  solver = SudokuSolver.new(string)
  index = 0

  it "takes a string" do
    expect(solver.board_string).to eq(string)
  end

  it "turns into an array" do
    expect(solver.board).to eq(string.split(''))
  end

  it "get row for specific index" do
    expect(solver.get_row(index)).to eq(["6","1","9","0","3","0","0","4","0"])
  end 
  
  it "get column for specific index" do
    expect(solver.get_col(index)).to eq(["6","2","0","4","0","0","0","3","1"])
  end

  # it "get mini-box for specific index" do
  #   expect(solver.get_mini_box(index)).to eq(["6","1","9","2","7","0","0","0","0"])
  # end

end

