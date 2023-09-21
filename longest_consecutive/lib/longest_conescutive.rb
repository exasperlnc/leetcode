def longest_consecutive(nums)
  # sort nums
  nums.sort!
  # iterate through nums and keep track of current conescutive and max consecutive
  current = 0
  longest = 0
  nums.each_with_index do |num, index|
    longest = 1 if index == 0
    next if index == 0
    
    # if the number before is consecutive, current += 1

    # if the number before isn't, current = 1

    # if current > longest, longest == consecutive 

  # return max consecutive
  return longest
end