def combination_sum(candidates, target)
  @answers = []

  # recurse some stuff
  recurse(0, [], candidates, target, 0)

  @answers
end

def recurse(i, current, candidates, target, total)
  if total == target
    @answers << current.dup
    return
  end
  
  if i >= candidates.length || total > target
    return
  end
  
  current.append(candidates[i])
  recurse(i, current, candidates, target, total + candidates[i])
  current.pop()
  recurse(i+1, current, candidates, target, total)

end