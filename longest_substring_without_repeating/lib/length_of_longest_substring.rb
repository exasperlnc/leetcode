def length_of_longest_substring(s)
  # pointer one is last repeat 
  # pointer two is iterating through string s 
  # max is the max string 
  i = 0
  max = 0
  string_saver = ''
  s_chars = s.chars
  hash = {}
  while i <= s.length - 1
      letter = s_chars[i]
      # if its not a repeat, add it to the string
      if hash[letter] != true
          string_saver << letter 
          hash[letter] = true
      # if it is a repeat, go to wherever the repeat is in the string and restart counting after that 
      else
          # go to the first appearance of the letter in the string and reset the string to that 
          new_string = ''
          found = false 
          string_saver.chars.each do |char|
              if !found
                  if char = letter
                      found = true
                      hash.clear
                  end
              else
                  new_string << char
                  hash[char] = true
              end
          end
          string_saver = new_string 
      end
      if string_saver.length > max
          max = string_saver.length 
      end
      i += 1
  end
  return max
end