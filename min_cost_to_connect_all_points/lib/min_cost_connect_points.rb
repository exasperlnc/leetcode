def find(u, parent)
  return u if parent[u] == u
  parent[u] = find(parent[u], parent) # Path compression
  return parent[u]
end

def union(u, v, parent, rank)
  u = find(u, parent)
  v = find(v, parent)

  return if u == v # They're already in the same set

  if rank[u] > rank[v]
    parent[v] = u
  elsif rank[u] < rank[v]
    parent[u] = v
  else
    parent[v] = u
    rank[u] += 1
  end
end

def min_cost_connect_points(points)
  edges = []
  n = points.size

  # Step 1: Calculate all edges and distances
  (0...n).each do |i|
    ((i + 1)...n).each do |j|
      distance = (points[i][0] - points[j][0]).abs + (points[i][1] - points[j][1]).abs
      edges << { point_1: i, point_2: j, distance: distance }
    end
  end

  # Step 2: Sort edges by distance
  edges.sort! { |a, b| a[:distance] <=> b[:distance] }

  # Step 3: Initialize Union-Find data structures
  parent = Array.new(n) { |i| i }
  rank = Array.new(n, 0)

  # Step 4: Kruskal's Algorithm
  min_cost = 0
  edges.each do |edge|
    u, v, w = edge[:point_1], edge[:point_2], edge[:distance]

    if find(u, parent) != find(v, parent)
      min_cost += w
      union(u, v, parent, rank)
    end
  end

  return min_cost
end