require 'tree_node'

def level_order(root)
  # create result to store vals
  result = []

  # create cur array to store nodes
  cur_level = []
  cur_level << root if root
  # put root in cur

  # until cur.empty?
  until cur_level.empty?
    # save all cur vals here 
    vals = []
    # save next level here
    next_level = []

    # iterate through nodes in cur and save the vals to val, then put children in next
    cur_level.each do |node|
      vals << node.val
      next_level << node.left if node.left
      next_level << node.right if node.right
    end
    # result << vals
    result << vals

    # set cur level to next

    cur_level = next_level
  end
  return result
  # return result
end