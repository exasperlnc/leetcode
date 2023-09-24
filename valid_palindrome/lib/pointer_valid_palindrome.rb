def pointer_valid_palindrome(s)
  # define pointers for each index
  check = s.downcase.scan(/[a-z0-9]/).join
  l_pointer = 0
  r_pointer = check.length - 1
  # while l_pointer < r_pointer
  # see if the chars are the same
  # return false if not
  while l_pointer < r_pointer
    return false if check[l_pointer] != check[r_pointer]
    l_pointer += 1
    r_pointer -= 1
  end

  # return true 
  return true
end