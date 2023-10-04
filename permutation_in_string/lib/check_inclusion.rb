def check_inclusion(s1, s2)
  compare = s1.downcase.chars.sort

  p1 = 0
  p2 = s1.length - 1

  while p2 <= s2.length - 1
    if compare == s2[p1..p2].downcase.chars.sort
      return true
    end
    p1 += 1
    p2 += 1
  end
  return false 
end