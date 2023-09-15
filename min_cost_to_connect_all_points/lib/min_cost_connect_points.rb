def min_cost_connect_points(points)
  # iterate through points
  array_size = points.count
  distances = Array.new(array_size) { Array.new(array_size, 0) }

  for i in 0..(array_size - 1)
    for j in (i + 1)...array_size 
      # calculate manhattan distance between each point
      distance = (points[i][0] - points[j][0]).abs + (points[i][1] - points[j][1]).abs
      distances[i][j] = distance
      distances[j][i] = distance 
    end
  end
  # .min the result
end