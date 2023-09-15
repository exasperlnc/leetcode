def min_cost_connect_points(points)
  # iterate through points
  array_size = points.count
  edges = []

  for i in 0..(array_size - 1)
    for j in (i + 1)...array_size 
      # calculate manhattan distance between each point
      distance = (points[i][0] - points[j][0]).abs + (points[i][1] - points[j][1]).abs
      edges << { point_1: i, point_2: j, distance: distance }
    end
  end

  edges.sort! {|edge_1, edge_2| edge_1[:distance] <=> edge_2[:distance] }
  # .min the result
end
# dp = Array.new(2^array_size) { Array.new(array_size, Float::INFINITY) }
# dp[1][0] = 0
# for i in 