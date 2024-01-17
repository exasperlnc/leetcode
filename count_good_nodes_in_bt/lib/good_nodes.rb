def good_nodes(root)
  $goodies = 1
  max = root.val

  good_node(root.left, max) if root.left
  good_node(root.right, max) if root.right

  $goodies
end

def good_node(root, max)
  $goodies += 1 if root.val >= max
  max = root.val if root.val > max
  
  good_node(root.left, max) if root.left
  good_node(root.right, max) if root.right
end