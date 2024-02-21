def rob(nums)
  return nums.max if nums.size < 4
  # declare dp1 with default values 0 and size of nums
  # first one is first nums
  # second one is max of first and second nums
  # iterate through all but last number

  # declare dp2 with default values 0 and size of nums
  # dp2[1 is nums[1]]
  # iterate through second an onward indexes

  # return dp1-2, and dp2 -1
end