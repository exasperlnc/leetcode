def subsets_with_dup(nums)
  answer = []

  # dfs function here 
  recurse(nums.sort, answer, [], 0)

  answer
end

def recurse(nums, answer, subset, i)
  if i == nums.length
    answer << subset.clone
    return
  end

  # add it 
  subset << nums[i]
  recurse(nums, answer, subset, i+1)
  # dont add it
  subset.pop

  while ((i+1 < nums.length) && (nums[i] == nums[i+1]))
    i +=1
  end
  recurse(nums, answer, subset, i+1)

end