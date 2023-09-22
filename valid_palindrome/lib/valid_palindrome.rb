def valid_palindrome(string)
  clean = string.downcase.scan(/[a-z0-9]/).join
  clean == clean.reverse
end