def exist(board, word)
  @rows = board.length
  @cols = board[0].length
  @board = board
  @word = word
  @path = Set.new()
  

  def dfs(r, c, i)
    return true if i == @word.length
    return false if ((r >= @rows.length) || (c >= @cols.length) || r<0 || c<0 ||@word[i] != @board[r][c] || @path.include?([r,c]))

    @path.add([r,c])

    result = 
    (dfs(r+1,c,i+1) ||
    dfs(r-1,c,i+1) ||
    dfs(r,c+1,i+1) ||
    dfs(r,c-1,i+1))

    @path.delete([r,c])

    return result
  end

  (0..@rows-1).each do |r|
    (0..@cols-1).each do |c|
        return true if dfs(r,c,0)
    end
  end
  return false
end