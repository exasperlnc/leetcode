def diameter_of_binary_tree(root)
  $max = 0
  max_height = diameter(root)
  $max > max_height ? $max : max_height
end

def diameter(root)
  return -1 unless root 
  left = 1 + diameter(root.left)
  right = 1 + diameter(root.right)
  diameter = left + right
  $max = diameter if $max < diameter
  left > right ? left : right
end