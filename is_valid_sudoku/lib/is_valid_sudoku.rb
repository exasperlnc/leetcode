def is_valid_sudoku(board)
  # check each row
  board.each do |row|
    # return false if any repeats
    return false if row.reject { |x| x == '.'}.tally.values.any? { |value| value > 1}
  end
  # check each column
  (0..8).each do |index|
    # return false if repeat
    checker = []
    board.each do |row|
      next if row[index] == '.'
      checker << row[index]
    end
    return false if checker.tally.values.any? { |value| value > 1}
  end
  y_cap = 0
  until y_cap == 9
    x_cap = 0
    until x_cap == 9
      box = []
      (y_cap...(y_cap + 3)).each do |y|
        (x_cap...(x_cap + 3)).each do |x|
          next if board[x][y] == '.'
          box << board[x][y]
        end
        return false if box.tally.values.any? { |value| value > 1 }
      end
      x_cap += 3
    end
    y_cap += 3
  end
  return true
end