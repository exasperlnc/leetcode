def length_of_longest_substring(s)
  hash = {}
  pointer = 0 
  start = 0
  max = 0

  while pointer < s.length
    letter = s[pointer]

    if hash.key?(letter) && hash[letter] >= start
      start = hash[letter] + 1 
    end

    hash[letter] = pointer

    max = [max, pointer - start + 1].max
    pointer += 1 
  end
  max 
end