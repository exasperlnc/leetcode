def valid_parenthesis(string)
  # add items to an array if they are opener strings
  heap = []
  string.chars.each do |char|
    if ['[', '(', '{'].include? char
      heap << char
    else
      if char == ']'
        return false if heap.pop != '['
      elsif char == ')'
        return false if heap.pop != '('
      else
        return false if heap.pop != '{'
      end
    end
  end
  return false if !heap.empty?
  return true
end