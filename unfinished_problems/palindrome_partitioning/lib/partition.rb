def partition(s)
  @s = s 
  @result = []
  @partition = []

  def dfs(i)
    # base case 
      # add partition dup to result
      # return

    (i...@s.length).each do |j|
      # if its a palindrome, add to partition
      # call dfs after the end of the palindrome (j+1)
      # pop partition
    end
  end

  dfs(0)

  @result
end

def palindrome?(s, i, j)
  while i < j
    return false if s[i] != s[j]
    i += 1
    j += 1
  end
  return true
end