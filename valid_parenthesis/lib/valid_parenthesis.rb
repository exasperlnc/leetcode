def valid_parenthesis(string)
  stack = []
  string.chars.each do |char|
    case char
    when '[', '{', '('
      stack << char
    when ')'
      return false if stack.pop != '('
    when ']'
      return false if stack.pop != '['
    when '}'
      return false if stack.pop != '{'
    end
  end
  stack.empty?
end