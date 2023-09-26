def max_area(heights)
  # max height is the smallest of the two heights used  
  
  # the distance between the two indexes used is the length 
  max = 0
  l_pointer = 0
  r_pointer = heights.length - 1

  while l_pointer < r_pointer
    # compute the area based on the two pointers
    area = [heights[l_pointer], heights[r_pointer]].min * (r_pointer - l_pointer)
    max = area if area > max  
    # shift based on which pointer is smaller
    if heights[r_pointer] < heights[l_pointer]
      r_pointer -= 1
    else 
      l_pointer += 1
    end
  end
  max
end