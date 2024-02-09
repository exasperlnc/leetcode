def combination_sum(candidates, target)
  @answers = []
  @candidates = candidates
  @target = target

  # recurse some stuff
  recurse(0, [], 0)

  @answers
end

def recurse(i, current, total)
  if total == @target
    @answers << current.dup
    return
  end

  return if i >= @candidates.length || total > @target

  #add it
  current << @candidates[i]
  recurse(i, current, total + @candidates[i])
  # don't add it
  current.pop 
  recurse(i+1, current, total) 
end