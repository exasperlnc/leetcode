require './lib/tree_node'
require './lib/lowest_common_ancestor'
require 'rspec'

describe 'lowest common ancestor' do
  before :all do
    @p1 = TreeNode.new(2)
    @q1 = TreeNode.new(8)
    @out1 = 6
    @root1 = TreeNode.new(6)
    @root1.left = TreeNode.new(2)
    @root1.right = TreeNode.new(8)
    @root1.left.left = TreeNode.new(0)
    @root1.left.right = TreeNode.new(4)
    @root1.right.left = TreeNode.new(7)
    @root1.right.right= TreeNode.new(9)
    @root1.left.right.left = TreeNode.new(3)
    @root1.left.right.right = TreeNode.new(5)

    @p2 = TreeNode.new(2)
    @q2 = TreeNode.new(4)
    @out2 = 2
    @root2 = TreeNode.new(6)
    @root2.left = TreeNode.new(2)
    @root2.right = TreeNode.new(8)
    @root2.left.left = TreeNode.new(0)
    @root2.left.right = TreeNode.new(4)
    @root2.right.left = TreeNode.new(7)
    @root2.right.right= TreeNode.new(9)
    @root2.left.right.left = TreeNode.new(3)
    @root2.left.right.right = TreeNode.new(5)
  end
  it '1' do 
    expect(lowest_common_ancestor(@root1, @p1, @q1)).to eq(@out1)
  end

  it '2' do
    expect(lowest_common_ancestor(@root2, @p2, @q2)).to eq(@out2)
  end
end