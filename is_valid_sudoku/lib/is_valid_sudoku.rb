def is_valid_sudoku(board)
  # check each row
  board.each do |row|
    # return false if any repeats
    return false if row.reject { |x| x == '.'}.tally.values.any? { |value| value > 1}
  end
  # check each column
  (0..8).each do |index|
    # return false if repeat
    checker = {}
    board.each do |row|
      checker[index] ||= []
      next if row[index] == '.'
      checker[index] << row[index]
    end
    return false if checker.tally.values.any? { |value| value > 1}
  end
  
  # check each 9x9 set
    # set 1 is row[0-2] and col[0-2]
    # set 2 is row[0-2] and col[3-5]
    # set 3 is row[0-2] and col[6-8]
    
    # set 4 is row[3-5] and col[0-2]
    # set 5 is row[3-5] and col[3-5]
    # set 6 is row[3-5] and col[6-8]

    # set 7 is row[6-8] and col[0-2]
    # set 8 is row[6-8] and col[3-5]
    # set 9 is row[6-8] and col[6-8]



    #first three columns
  return true
end