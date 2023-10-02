def binary_search(nums, target)
  # iterate through nums with bsearch, find target
  search = nums.bsearch_index { |a, index| target <=> a }
  return search if search 
  # if the bsearch == target, return target 
  return -1 
end