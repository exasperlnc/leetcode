def partition(s)
  @result = []
  @partition = []
  @s = s 

  def dfs(i)
    if i >= @s.length
      @result << @partition.dup 
      return
    end
    
    (i...@s.length).each do |j|
      if palindrome?(@s, i, j)
        @partition << @s[i..j]
        dfs(j+1)
        @partition.pop
      end   
    end
  end

  dfs(0)

  @result
end

def palindrome?(s, i , j)
  while i < j
    return false if s[i] != s[j]
    i += 1
    j -= 1
  end
  return true
end