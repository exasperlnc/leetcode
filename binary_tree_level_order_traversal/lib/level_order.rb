require 'tree_node'

def level_order(root)
  result = []

  cur = []
  next_l = []
  cur << root

  until cur.empty?
    vals = []
    until cur.empty?
      node = cur.shift
      vals << node.val
      next_l << node.left if node.left
      next_l << node.right if node.right
    end

      result << vals
      cur = next_l
      next_l = []
  end
  result
end