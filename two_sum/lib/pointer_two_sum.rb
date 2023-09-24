def pointer_two_sum(nums, target)
  # save pointers
  l_index = 0
  r_index = nums.length - 1

  # while l < r
  while l_index < r_index
    # l spaceship r
    case nums[l_index] + nums[r_index] <=> target

    # when 1 
    when 1
      # decrement r
      r_index -= 1

    # when 0
    when 0
      # return indexes
      return [l_index + 1, r_index + 1]
    
    # when -1 
    when -1
      # increment l
      l_index += 1
    end
  end
  false
end