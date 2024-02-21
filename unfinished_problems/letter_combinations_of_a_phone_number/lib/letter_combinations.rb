$MAP = {
    2 => %w(a b c),
    3 => %w(d e f),
    4 => %w(g h i),
    5 => %w(j k l),
    6 => %w(m n o),
    7 => %w(p q r s),
    8 => %w(t u v),
    9 => %w(w x y z)    
}

def letter_combinations(digits)
  result = []
  
  recurse(digits, "", result, 0) unless digits.empty?
  
  result
end

def recurse(digits, string, result, i)
  if digits.length == string.length
    result << string
    return
  end

  digit = digits[i].to_i

  $MAP[digit].each do |c|
    recurse(digits, string + c, result, i+1)
  end
end