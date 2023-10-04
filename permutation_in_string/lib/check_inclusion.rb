def check_inclusion(s1, s2)
  compare = s1.chars.tally
  alphabet_hash = Hash.new(0)
  p1 = 0
  p2 = s1.length - 1

  # populate the initial hash 
  s2[p1..p2].chars.each {|char| alphabet_hash[char] += 1}

  while p2 <= s2.length - 1
    if compare == alphabet_hash
      return true
    end
  
    p1_letter = s2[p1]
    alphabet_hash[p1_letter] -= 1

    alphabet_hash.delete(p1_letter) if alphabet_hash[p1_letter] == 0
    
    p1 += 1
    p2 += 1
    if p2 < s2.length
      p2_letter = s2[p2]
      alphabet_hash[p2_letter] += 1
    end
  end
  compare == alphabet_hash
end