def two_sum(nums, target)
  num_indices = {}
  nums.each_with_index do |num, index|
    if num_indices[target - num]
      return [num_indices[target - num], index]
    else
      num_indices[num] = index
    end
  end
end