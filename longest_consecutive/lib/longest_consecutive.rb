def longest_consecutive(nums)
  # sort nums
  sorted = nums.sort.uniq
  # iterate through nums and keep track of current conescutive and max consecutive
  current = 0
  longest = 0
  sorted.each_with_index do |num, index|
    longest = 1 if index == 0
    current = 1 if index == 0
    next if index == 0
    # if the number before is consecutive, current += 1
    if sorted[index-1] - num == -1
      current += 1
      longest = current if current > longest
    else 
      # if the number before isn't, current = 1
      current = 1
    end
    # if current > longest, longest == consecutive 
  end
  # return max consecutive
  return longest
end