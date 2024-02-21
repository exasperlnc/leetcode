def longest_palindrome(s)
  # base case, short length? 
  @result = ""
  # check if current string is palindrome
  def dfs(string)
    # base case, string length == 1?
    return if string.length <= 1
    # if true, save result
    if palindrome?(string)
      @result = string
      return
    else
      # break string down at front and back and feed it back in
      dfs(string[0..-2])
      dfs(string[1..-1])
    end
  end
  dfs(s)

  @result
end

def palindrome?(string)
  return true if string == string.reverse
  return false
end