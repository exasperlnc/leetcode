def combination_sum2(candidates, target)
  @result = []
  @candidates = candidates.sort

  def backtrack(cur, pos, target)
    @result << cur.dup if target == 0
    return if target <= 0

    prev = -1

    (pos...@candidates.length).each do |i|
      next if @candidates[i] == prev

      cur.append(@candidates[i])

      backtrack(cur,i+1,target-@candidates[i])

      cur.pop

      prev = @candidates[i]
    end
    
  end
  backtrack([], 0, target)
  @result
end