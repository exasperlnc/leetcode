def climb_stairs(n)
  one, two = 1, 1
  (0...n-1).each do 
    temp = one
    one = one + two
    two = temp
  end
  return one
end