def subsets(nums)
  result = []

  dfs(0, nums, [], result)

  result
end

def dfs(i, nums, subset, result)
  if i >= nums.length
    result << subset.clone
    return
  end
  
  subset << nums[i]
  dfs(i + 1, nums, subset, result)

  subset.pop()
  dfs(i + 1, nums, subset, result)
end