def three_sum(nums)
  # solutions = []
  solutions = []
  # sort nums
  sorted = nums.sort
  # iterate through nums
  sorted.each_with_index do |num, index|
    next if index.positive? && num == sorted[index - 1]
    # break if num > 0
    # set the goal number as the current num


  # us l_index and r_index
    l_index = index + 1
    r_index = sorted.length - 1
    while l_index < r_index
    # compare with spaceship 
      case sorted[l_index] + sorted[r_index] + num <=> 0
    # if 1, decrement r
        when 1 
          r_index -= 1
    # if 0, add all nums to the solutions array 
        when 0
          solutions << [num, sorted[l_index], sorted[r_index]]
          l_index += 1
          l_index += 1 while sorted[l_index] == sorted[l_index - 1] && l_index < r_index
    # if -1, increment l 
        when -1
          l_index += 1
        end
      end
    end
  return solutions
end