def divide_array(nums, k)
  # make sure the array.count % 3 == 0
  # else return empty array 
  return [] if nums.count % 3 != 0

  # define answer array
  answer = []
  count = 0
  current_array = []
  # put the elements in arrays of three in order? 
  nums.sort.each do |num|
    # how to double check answers are all within k? as you fill array? 

    if count < 3
      count += 1
      current_array << num
    else
      count = 1
      # check if the nums in curr_array qualify with k
      return [] if (current_array[2] - current_array[0] > k)
      answer << current_array
      current_array = [num]
    end
  end
  # check if the nums in curr_array qualify with k
  return [] if (current_array[2] - current_array[0] > k)
  answer << current_array

  # return the new array 
  return answer
end