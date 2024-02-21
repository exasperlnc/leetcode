def climb_stairs(n)
  @ans = 0

  recurse(n, 0)

  @ans 
end

def recurse(number, total)
  if number == total
    @ans += 1
    return
  elsif total > number
    return
  else 
    recurse(number, total + 1)
    recurse(number, total + 2)
  end
end