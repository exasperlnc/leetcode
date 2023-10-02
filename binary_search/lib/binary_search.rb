def binary_search(nums, target)
  return -1 if nums.empty? 
  # define l and r 
  l = 0
  r = nums.length - 1 
  # run a while loop for l <= r
  while l <= r
    midpoint = (l + r) / 2
  # iterate through the nums array using midpoints and looking for target
  # if target is bigger than the number at index, increase the pointers
    if nums[midpoint] < target
      l += 1
  # if the target is smaller, decrease them
    elsif nums[midpoint] > target 
      r -= 1
    else
      return midpoint
    end
    # if the target is the number, return it's index
  end
  return -1 
end