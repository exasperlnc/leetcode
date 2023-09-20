def is_valid_sudoku(board)
  # check each row
  board.each do |row|
    # return false if any repeats
    return false if row.reject { |x| x == '.'}.tally.values.any? { |value| value > 1}
  end
  # check each column
    # return false if repeat
  # check each 9x9 set
    # return false if any repeat
  return true
end